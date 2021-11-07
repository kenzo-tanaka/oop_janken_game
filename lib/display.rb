class Display
  def show(result)
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end
