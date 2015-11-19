NODE_DIRS := 5.1 5.0 4.2 4.1 4.0 0.12
ONBUILD_DIRS := 5.1/onbuild 5.0/onbuild 4.2/onbuild 4.1/onbuild 4.0/onbuild 0.12/onbuild

.PHONY: all clean $(NODE_DIRS) $(ONBUILD_DIRS)

all: $(NODE_DIRS) $(ONBUILD_DIRS)

clean: $(ONBUILD_DIRS) $(NODE_DIRS)

$(NODE_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

$(ONBUILD_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
