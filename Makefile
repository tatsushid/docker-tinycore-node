NODE_DIRS := 5.9 4.4 0.12
ONBUILD_DIRS := 5.9/onbuild 4.4/onbuild 0.12/onbuild

.PHONY: all clean $(NODE_DIRS) $(ONBUILD_DIRS)

all: $(NODE_DIRS) $(ONBUILD_DIRS)

clean: $(ONBUILD_DIRS) $(NODE_DIRS)

$(NODE_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

$(ONBUILD_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
