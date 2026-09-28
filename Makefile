BUILD_DIR=build

.PHONY: all clean site deploy

all: site

clean:
	rm -rf $(BUILD_DIR)

site:
	mkdir $(BUILD_DIR)
	cp -a _redirects 404.html favicon.ico index.html robots.txt summercat2.png summercat.png $(BUILD_DIR)

deploy: site
	mise exec -- pnpm exec wrangler deploy
