import { Angular2CircleCiStarterPage } from './app.po';

describe('angular2-circle-ci-starter App', function() {
  let page: Angular2CircleCiStarterPage;

  beforeEach(() => {
    page = new Angular2CircleCiStarterPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
