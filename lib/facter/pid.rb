Facter.add(:pid) do
  setcode { Process.pid }
end
