class Doctor

  attr_reader :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments
    @@all << self

  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.map(&:patient)
  end

  def self.all
    @@all
  end

  
end

# binding.pry
#date, patient, doctor