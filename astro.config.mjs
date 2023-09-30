import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
  integrations: [
    starlight({
      title: 'programming languages for all',
      defaultLocale: 'ko',
      customCss: [
        // Relative path to your custom CSS file
        './src/styles/custom.css',
      ],
      social: {
        github: 'https://github.com/withastro/starlight',
      },
      sidebar: [
        {
          label: '언어별 가이드',
          autogenerate: { directory: 'guides' },
        },
        // {
        //   label: '이야기들',
        //   autogenerate: { directory: 'essay' },
        // },
        // {
        //   label: 'Advent of Code',
        //   autogenerate: { directory: 'advent-of-code' },
        // },
        {
          label: 'Exercism',
          autogenerate: { directory: 'exercism' },
        },
      ],
    }),
  ],
});
