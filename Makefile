NODE_DIRS := 8.4 7.10 6.11 4.8 0.12
ONBUILD_DIRS := 8.4/onbuild 7.10/onbuild 6.11/onbuild 4.8/onbuild 0.12/onbuild

.PHONY: all clean $(NODE_DIRS) $(ONBUILD_DIRS)

all: $(NODE_DIRS) $(ONBUILD_DIRS)

clean: $(ONBUILD_DIRS) $(NODE_DIRS)

$(NODE_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

$(ONBUILD_DIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)
