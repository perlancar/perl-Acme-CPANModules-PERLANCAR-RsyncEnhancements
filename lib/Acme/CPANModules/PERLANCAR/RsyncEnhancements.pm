package Acme::CPANModules::PERLANCAR::RsyncEnhancements;

# DATE
# VERSION

our $LIST = {
    summary => 'List of my enhancements for rsync',
    description => <<'_',

Rsync is one of my favorite tools in the whole wide world. There are a few
things that I want rsync to do but doesn't so I made some enhancements for it.
Currently all of the enhancements are in the form of wrapper, because it is the
easiest and most straightforward, implementation-wise.

_
    entries => [
        {
            module => "App::rsync::new2old",
            description => <<'_',

Rsync is a one-way syncing tool, as two-way syncing can be much slower (because
it requires recording states in both sides) or requires more specific tools
(like version control system). In simpler cases, when updates only happen in one
side, you can perform two-way syncing by just checking that: the side that has
the newest file "wins" (is sync-ed to the "losing" side). This script checks
that condition.

_
        },
        {
            module => "App::rsync::retry",
            description => <<'_',

Rsync can resume a partial sync, but does not automatically retries. An annoying
thing is invoking an rsync command to sync a large tree, leaving the computer
for the day, then returning the following day hoping the transfer would be
completed, only to see that it failed early because of a network hiccup. This
wrapper automatically retries rsync when there is a transfer error.

_
        },
        {
            module => "App::rsynccolor",
            description => <<'_',

This wrapper adds some color to the rsync output, particularly giving a red to
deletion, so you can spot deletion more easily. Particularly handy if you use it
with the `-n` (`--dry-run`) option.

_
        },
    ],
};

1;
# ABSTRACT:
