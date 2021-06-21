.PHONY: all johnpaul georgeringo hellobeatles

all: hellobeatles

johnpaul georgeringo hellobeatles:
	$(MAKE) --directory=$@ $(TARGET)

hellobeatles: johnpaul georgeringo
