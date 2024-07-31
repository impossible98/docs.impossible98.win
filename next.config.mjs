import nextra from 'nextra';

const withNextra = nextra({
  theme: 'nextra-theme-docs',
  latex: true,
  themeConfig: './theme.config.tsx',
  defaultShowCopyCode: true,
});

export default withNextra();
