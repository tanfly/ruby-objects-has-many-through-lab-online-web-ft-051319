class Patient 
  
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(doctor, date) 
    Appointment.new(self, doctor, date)
  end 
  
  def appointment 
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end
  
  def self.all 
    @@all 
  end 
  
end