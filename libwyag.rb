def main
  case ARGV.shift
  in 'add'         then call_system_git('add', ARGV)
  in 'cat-file'    then call_system_git('cat-file', ARGV)
  in 'checkout'    then call_system_git('checkout', ARGV)
  in 'commit'      then call_system_git('commit', ARGV)
  in 'hash-object' then call_system_git('hash-object', ARGV)
  in 'init'        then call_system_git('init', ARGV)
  in 'log'         then call_system_git('log', ARGV)
  in 'ls-tree'     then call_system_git('ls-tree', ARGV)
  in 'merge'       then call_system_git('merge', ARGV)
  in 'rebase'      then call_system_git('rebase', ARGV)
  in 'rev-parse'   then call_system_git('rev-parse', ARGV)
  in 'rm'          then call_system_git('rm', ARGV)
  in 'show-ref'    then call_system_git('show-ref', ARGV)
  in 'tag'         then call_system_git('tag', ARGV)
  in subcmd
    $stderr.puts "no such subcommand: #{subcmd}"
    exit 1
  end
end

def call_system_git(subcmd, args)
  system("git #{subcmd} #{args.join(' ')}")
end
