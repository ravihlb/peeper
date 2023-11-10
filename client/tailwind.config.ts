import type { Config } from 'tailwindcss'

export default {
  content: [
      './index.html',
      './src/**/*.{vue,js,ts}'],
  theme: {
    colors: {
      'blue': '#1d9bf0',
    },
    extend: {},
  },
  plugins: [],
  corePlugins: {
      preflight: false,
  }
} satisfies Config
