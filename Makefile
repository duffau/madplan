index.html:
	pandoc index.md -o .index.html --css ./static/simple.css --standalone


plan.html:
	for d in */.; do \
		if [ "$$d" != "static/." ]; then \
			$(MAKE) plan.html -C $$d; \
		fi; \
	done
