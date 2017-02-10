NODE_DIRS := 7.5 6.9 4.7 0.12
ONBUILD_DIRS := 7.5/onbuild 6.9/onbuild 4.7/onbuild 0.12/onbuild

.PHONY: all clean $(NODE_DIRS) $(ONBUILD_DIRS)

all: $(NODE_DIRS) $(ONBUILD_DIRS)

clean: $(ONBUILD_DIRS) $(NODE_DIRS)

$(NODE_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

$(ONBUILD_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
