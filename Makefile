# Makefile for tailwind stuff

TAILWIND_DIR = tailwind

init: # Init tailwind stuff (run once on project init)
	cd $(TAILWIND_DIR) && \
		rm -rf node_modules package-lock.json && \
		npm install tailwindcss postcss-cli autoprefixer && \
		npx tailwind init

build: # Generate tailwind CSS file (run when you use new tailwind classes)
	cd $(TAILWIND_DIR) && npm run-script build
