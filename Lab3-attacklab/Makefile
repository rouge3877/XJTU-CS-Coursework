FILES := phase1.txt phase2.txt phase3.txt phase4.txt phase5.txt ctarget rtarget cookie.txt

handin:
	@for file in $(FILES); do \
		if [ ! -f $$file ]; then \
			echo "Warning: $$file does not exist and will be skipped"; \
		fi; \
	done
	@tar -cf ${USER}-handin.zip $(FILES) 2>/dev/null || true
	@echo packed to ${USER}-handin.zip 
.PHONY: handin

