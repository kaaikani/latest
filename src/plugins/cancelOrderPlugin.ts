import { Resolver,Query, Mutation,Args } from '@nestjs/graphql';
import { gql } from 'graphql-tag';
import { PluginCommonModule, RequestContext,Ctx, OrderService } from '@vendure/core';
import { VendurePlugin } from '@vendure/core';

const schemaExtension = gql`
  extend type Mutation {
    cancelOrderOnClientRequest(orderId: ID!,value: Int!): Order!
  }
`;

@Resolver()
class CancelOrderRequestResolver {
    constructor(private orderService: OrderService){}
    @Mutation()
    cancelOrderOnClientRequest(@Ctx() ctx: RequestContext, @Args() args: any){
        return this.orderService.updateCustomFields(ctx,args.orderId,{clientRequestToCancel: args.value});
    }
}

@VendurePlugin({
    imports: [PluginCommonModule],
    compatibility: '^2.0.0',
    configuration: config => {
        config.customFields.Order.push({
            type: 'int',
            defaultValue: 0,
            name: 'clientRequestToCancel'
        });
        return config;
    },
    shopApiExtensions:{
        schema: schemaExtension,
        resolvers: [CancelOrderRequestResolver]
    },
    adminApiExtensions:{
        schema: schemaExtension,
        resolvers: [CancelOrderRequestResolver]
    }
})

export class CancelOrderPlugin{}
