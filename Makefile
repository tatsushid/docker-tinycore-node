NODE_DIRS := 7.10 6.10 4.8 0.12
ONBUILD_DIRS := 7.10/onbuild 6.10/onbuild 4.8/onbuild 0.12/onbuild

.PHONY: all clean $(NODE_DIRS) $(ONBUILD_DIRS)

all: $(NODE_DIRS) $(ONBUILD_DIRS)

clean: $(ONBUILD_DIRS) $(NODE_DIRS)

$(NODE_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

$(ONBUILD_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
