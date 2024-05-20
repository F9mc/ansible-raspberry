# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

for f in ~/.zshrc.d/???-*.sh; do
    source "$f";
done
