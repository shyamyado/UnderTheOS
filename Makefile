# Root Makefile
# Helps build each module from the project root

DIRS = \
	01-processes \
	02-scheduling \
	03-threads \
	04-concurrency \
	05-memory \
	06-filesystems \
	07-virtualization

# If you run: make processes
# It will run make inside 01-processes/
.PHONY: $(DIRS) all clean

$(DIRS):
	$(MAKE) -C $@

# Build everything in every module
all:
	@for d in $(DIRS); do \
		$(MAKE) -C $$d; \
	done

# Clean all modules
clean:
	@for d in $(DIRS); do \
		$(MAKE) -C $$d clean || true; \
	done
	@echo "All clean!"
