use base "gnomestep";
use bmwqemu;

sub is_applicable() {
    my $self = shift;
    return $self->SUPER::is_applicable && !$vars{LIVECD};
}

sub run() {
    my $self = shift;
    x11_start_program("rhythmbox");
    assert_screen 'test-rhythmbox-1', 3;
    send_key "alt-f4";
    wait_idle;
}

1;
# vim: set sw=4 et: