
CFLAGS = -std=c89 -ansi -pedantic -Wall

OBJECTS = spdy_bytes.o spdy_control.o spdy_credential.o spdy_ctx.o \
		  spdy_goaway.o spdy_headers.o spdy_nv_block.o spdy_ping.o \
		  spdy_rst_stream.o spdy_settings.o spdy_stream.o spdy_syn_reply.o \
		  spdy_syn_stream.o spdy_zlib.o spdy_strings.o

all: libspdy.a

libspdy.a: $(OBJECTS)
	@ar rcs $@ $(OBJECTS)

spdy_bytes.o: src/spdy_bytes.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_bytes.c
spdy_control.o: src/spdy_control.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_control.c
spdy_credential.o: src/spdy_credential.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_credential.c
spdy_ctx.o: src/spdy_ctx.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_ctx.c
spdy_goaway.o: src/spdy_goaway.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_goaway.c
spdy_headers.o: src/spdy_headers.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_headers.c
spdy_window_update.o: src/spdy_window_update.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_window_update.c
spdy_nv_block.o: src/spdy_nv_block.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_nv_block.c
spdy_ping.o: src/spdy_ping.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_ping.c
spdy_rst_stream.o: src/spdy_rst_stream.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_rst_stream.c
spdy_settings.o: src/spdy_settings.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_settings.c
spdy_stream.o: src/spdy_stream.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_stream.c
spdy_syn_reply.o: src/spdy_syn_reply.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_syn_reply.c
spdy_syn_stream.o: src/spdy_syn_stream.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_syn_stream.c
spdy_zlib.o: src/spdy_zlib.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_zlib.c
spdy_strings.o: src/spdy_strings.c
	$(CC) $(CFLAGS) -c -o $@ src/spdy_strings.c

clean:
	rm -f $(OBJECTS) libspdy.a

.PHONY: all clean


