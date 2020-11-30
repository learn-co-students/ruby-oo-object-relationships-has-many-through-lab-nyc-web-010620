class Doctor
    @@all = []
    attr_reader :name
    attr_accessor :appointments, :patients

    def initialize(name)
        @name = name
        @appointments = []
        @patients = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

end

#The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor
#The Doctor class needs an instance method, #appointments, that iterates through all Appointments and finds those belonging to this doctor.
#The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.