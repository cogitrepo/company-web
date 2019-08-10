hostname = node['hostname']
file '/etc/motd' do
  content "Hostname is this: #{hostname}"
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
  puts node
end
