
script 'run_experiment' do
  cwd "/tmp"
  user node['flinkie']['user']
  group node['flinkie']['group']
  interpreter "bash"
  code <<-EOM
echo "#{node.streamline}"
  EOM
end

