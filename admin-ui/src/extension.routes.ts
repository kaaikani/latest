export const extensionRoutes = [  {
    path: 'extensions/pages',
    loadChildren: () => import('./extensions/33f021dee71ec1a8071b6a52698a5cd2794224d8de400d85d58c31ac87888686/pages-ui-lazy.module').then(m => m.PagesUiLazyModule),
  }];
