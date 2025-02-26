> [!NOTE]
> Deprecated because [transformations are a much better way to handle this](https://github.com/brandoncc/dotfiles/commit/b944a1a4bc3c390761a89072d90004998a521c58).

# vim-test-shadowenv

Shadowenv wrapper for some vim-test runners. This is the best option I've found
for prepending `shadowenv exec --` to runner commands so far. I'm looking for a
better solution because it is not ideal to have to write these for every runner
I want to use.
