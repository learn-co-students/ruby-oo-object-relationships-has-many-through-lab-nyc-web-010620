class Patient
    attr_reader :name
    attr_accessor :doctor, :appointments
    @@all = []
    
    def initialize(name)
        @name = name
        @doctor = []
        @appointments = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        new_appointment = Appointment.new(date, self, doctor)
    end

end

# The Patient class needs an instance method, #new_appointment, that takes in an argument of a doctor and a date and creates a new Appointment. The Appointment should know that it belongs to the patient.
# The Patient class needs an instance method, #appointments, that iterates through the Appointments array and returns Appointments that belong to the patient.
# The Patient class needs an instance method, #doctors, that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.