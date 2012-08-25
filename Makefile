
CFLAGS = -std=c89 -ansi -pedantic -Wall

OBJECTS = spdy_bytes.o spdy_control.o spdy_credential.o spdy_ctx.o \
		  spdy_goaway.o spdy_headers.o spdy_nv_block.o spdy_ping.o \
		  spdy_rst_stream.o spdy_settings.o spdy_stream.o spdy_syn_reply.o \
		  spdy_syn_stream.o spdy_zlib.o spdy_strings.o

all: libspdy.a

libspdy.a: $(OBJECTS)
	@ar rcs $@ $(OBJECTS)

%.o: src/%.c
	$(CC) $(CFLAGS) $< -c -o $@

clean:
	rm -f $(OBJECTS) libspdy.a

.PHONY: all clean


