class Patient

    @@all = []

    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
            # binding.pry
        end
    end

    def new_appointment(date, doctor)
        new_appointment = Appointment.new(doctor, self, date)
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end


end
