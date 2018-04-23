PREFIX   = /usr/local

.PHONY: all install uninstall

all: install

install:
	@echo 'Installing metal-archives scripts...'
	install -Dm755 band $(DESTDIR)$(PREFIX)/bin/band
	install -Dm755 cover $(DESTDIR)$(PREFIX)/bin/cover
	install -Dm755 genre $(DESTDIR)$(PREFIX)/bin/genre
	install -Dm755 location $(DESTDIR)$(PREFIX)/bin/location
	install -Dm755 logo $(DESTDIR)$(PREFIX)/bin/logo
	install -Dm755 lyrics $(DESTDIR)$(PREFIX)/bin/lyrics
	install -Dm755 releases $(DESTDIR)$(PREFIX)/bin/releases
	install -Dm755 songs $(DESTDIR)$(PREFIX)/bin/songs

uninstall:
	@echo 'Uninstalling metal-archives scripts...'
	rm -f $(DESTDIR)$(PREFIX)/bin/band
	rm -f $(DESTDIR)$(PREFIX)/bin/cover
	rm -f $(DESTDIR)$(PREFIX)/bin/genre
	rm -f $(DESTDIR)$(PREFIX)/bin/location
	rm -f $(DESTDIR)$(PREFIX)/bin/logo
	rm -f $(DESTDIR)$(PREFIX)/bin/lyrics
	rm -f $(DESTDIR)$(PREFIX)/bin/releases
	rm -f $(DESTDIR)$(PREFIX)/bin/songs

