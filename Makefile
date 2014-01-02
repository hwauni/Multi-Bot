CC		= cc
CTAGS		= -Wall

all: attack_normal attack_cc attack_cc_header

attack_normal: attack.c
	$(CC) $(CTAGS) -DATTACK_NORMAL $< -o $@

attack_cc: attack.c
	$(CC) $(CTAGS) -DATTACK_CC $< -o $@

attack_cc_header: attack.c
	$(CC) $(CTAGS) -DATTACK_CC_HEADER $< -o $@

clean:
	rm -rf attack_normal attack_cc attack_cc_header userver options.xml userver.pid
