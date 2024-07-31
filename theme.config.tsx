import React from 'react';
import { useRouter } from 'next/router';
import { DocsThemeConfig } from 'nextra-theme-docs';

const config: DocsThemeConfig = {
  logo: <span>Docs</span>,
  project: {
    link: 'https://github.com/impossible98/docs.impossible98.win',
  },
  docsRepositoryBase:
    'https://github.com/impossible98/docs.impossible98.win/tree/master',
  footer: {
    text: 'Docs',
  },
  useNextSeoProps() {
    const { asPath } = useRouter();
    if (asPath !== '/') {
      return {
        titleTemplate: '%s - Docs',
      };
    }
  },
  toc: {
    backToTop: true,
  },
};

export default config;
