Facter.add("rvm_installed") do
  rvm_folder = "/Users/jsmith/.rvm"

  setcode do
    File.exists? rvm_folder
  end
end
