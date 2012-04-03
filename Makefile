NMLC=nmlc
PROD=eels.grf

all: $(PROD)

$(PROD): eels.nml lang/* eel_icon.png
	$(NMLC) --grf $(PROD) eels.nml

install: $(PROD)
	cp $(PROD) /Users/zydeco/Documents/OpenTTD/data/newgrf/eels.grf

clean:
	rm -f eels.grf parsetab.py