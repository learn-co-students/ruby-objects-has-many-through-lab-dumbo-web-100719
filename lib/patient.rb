class Patient 
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name =name
        @@all << self 
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
        @@all << appointment
        appointment
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
        
    end 

    def self.all
        @@all 
    end 

    def doctors
        self.appointments.map do |appointment|
            appointment.doctor
        end 
    end


end