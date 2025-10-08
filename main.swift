import SwiftUI
import Charts

@main
struct FuelConsumptionApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}

class LocalizationManager: ObservableObject {
    @Published var currentLanguage: String {
        didSet {
            UserDefaults.standard.set(currentLanguage, forKey: "app_language")
        }
    }
    
    init() {
        self.currentLanguage = UserDefaults.standard.string(forKey: "app_language") ?? "sr"
    }
    
    func translate(_ key: String) -> String {
        return translations[currentLanguage]?[key] ?? key
    }
    
    private let translations: [String: [String: String]] = [
        "sr": [
            "fuel_consumption": "Potrošnja Goriva",
            "vehicles": "Vozila",
            "trip_diary": "Dnevnik Putovanja",
            "statistics": "Statistika",
            "settings": "Postavke",
            "maintenance": "Servisi",
            "small_service": "Mali servis",
            "big_service": "Veliki servis",
            "add_service": "Dodaj servis",
            "add_repair": "Dodaj popravku",
            "service_book": "Servisna knjižica",
            "brakes": "Kočnice",
            "tires": "Gume",
            "battery": "Akumulator",
            "airFilter": "Vazdušni filter",
            "fuelFilter": "Filter goriva",
            "sparkPlugs": "Svećice",
            "transmission": "Transmisija",
            "cooling": "Hlađenje",
            "suspension": "Oslanjanje",
            "other": "Ostalo",
            "edit_vehicle": "Izmeni vozilo",
            "delete_vehicle": "Obriši vozilo",
            "confirm_delete": "Potvrdi brisanje",
            "delete_message": "Da li ste sigurni da želite da obrišete ovo vozilo? Svi podaci vezani za vozilo će biti obrisani.",
            "delete": "Obriši",
            "service_type": "Tip servisa",
            "service_date": "Datum servisa",
            "service_location": "Mesto servisa",
            "service_cost": "Cena servisa",
            "service_kilometers": "Kilometraža",
            "next_service": "Sledeći servis",
            "km_until_service": "km do servisa",
            "overdue": "Prekoračeno",
            "no_services": "Nema unetih servisa",
            "service_history": "Istorija servisa",
            "update_km": "Ažuriraj kilometražu",
            "current_km": "Trenutna kilometraža",
            "export_settings": "Export podataka",
            "export_services": "Izvezi servise",
            "export_statistics": "Izvezi statistiku",
            "export_trips": "Izvezi vožnje",
            "export_all": "Izvezi sve podatke",
            "select_data": "Izaberite podatke",
            "select_vehicle_export": "Izaberite vozilo",
            "all_vehicles": "Sva vozila",
            "no_vehicles": "Nema dodanih vozila",
            "add_vehicle_desc": "Dodajte vozilo da biste počeli sa praćenjem potrošnje",
            "add_vehicle": "Dodaj vozilo",
            "new_vehicle": "Novo vozilo",
            "brand": "Marka automobila",
            "model": "Model automobila",
            "year": "Godina proizvodnje",
            "engine_type": "Tip motora",
            "horsepower": "Konjska snaga (HP)",
            "engine_capacity": "Zapremina motora (ccm)",
            "official_consumption": "Službena potrošnja (L/100km)",
            "cancel": "Otkaži",
            "add": "Dodaj",
            "done": "Gotovo",
            "gasoline": "Benzin",
            "diesel": "Dizel",
            "hybrid": "Hibrid",
            "electric": "Električni",
            "lng": "TNG",
            "city": "Grad",
            "highway": "Autoput",
            "mixed": "Mešovita",
            "week": "Nedelja",
            "month": "Mesec",
            "year": "Godina",
            "official": "Službena",
            "actual": "Stvarna",
            "refuelings": "Punjenja",
            "average": "Prosek",
            "total_cost": "Ukupni troškovi",
            "difference": "Razlika",
            "unusual_consumption": "Neuobičajena potrošnja",
            "unusual_desc": "Stvarna potrošnja se značajno razlikuje od službene. Razmotrite servis vozila.",
            "add_trip": "Dodaj vožnju",
            "no_trips": "Nema unetih vožnji",
            "trip_history": "Istorija vožnji",
            "consumption_chart": "Grafikon potrošnje",
            "chart_desc": "Potrebno je najmanje 2 punjenja za prikaz grafikona",
            "fuel_tips": "Saveti za smanjenje potrošnje",
            "new_trip": "Nova vožnja",
            "kilometers": "Pređeni kilometri",
            "liters": "Količina goriva (litara)",
            "price_per_liter": "Cena po litru (opciono)",
            "fuel_type": "Tip goriva",
            "driving_condition": "Usmerenje vožnje",
            "date_time": "Datum i vreme punjenja",
            "consumption": "Potrošnja",
            "price": "Cena",
            "export": "Export",
            "export_data": "Export podataka",
            "export_csv": "Export u CSV",
            "export_pdf": "Export u PDF format",
            "export_desc": "Podaci će biti izvezeni u tekstualnom formatu koji možete otvoriti u Excel-u ili drugim aplikacijama.",
            "close": "Zatvori",
            "share": "Podeli",
            "avg_consumption": "Prosečna potrošnja",
            "total_liters": "Ukupno litara",
            "total_kilometers": "Ukupno kilometara",
            "consumption_by_type": "Potrošnja po tipu vožnje",
            "language": "Jezik",
            "serbian": "Srpski",
            "english": "Engleski",
            "co2_emissions": "CO2 Emisija",
            "total_co2": "Ukupna CO2",
            "trip_details": "Detalji putovanja",
            "vehicle_details": "Detalji vozila"
        ],
        "en": [
            "fuel_consumption": "Fuel Consumption",
            "vehicles": "Vehicles",
            "trip_diary": "Trip Diary",
            "statistics": "Statistics",
            "settings": "Settings",
            "no_vehicles": "No vehicles added",
            "add_vehicle_desc": "Add a vehicle to start tracking consumption",
            "add_vehicle": "Add Vehicle",
            "new_vehicle": "New Vehicle",
            "brand": "Car Brand",
            "model": "Car Model",
            "year": "Year of Manufacture",
            "engine_type": "Engine Type",
            "horsepower": "Horsepower (HP)",
            "engine_capacity": "Engine Capacity (cc)",
            "official_consumption": "Official Consumption (L/100km)",
            "cancel": "Cancel",
            "add": "Add",
            "done": "Done",
            "gasoline": "Gasoline",
            "diesel": "Diesel",
            "hybrid": "Hybrid",
            "electric": "Electric",
            "lng": "LNG",
            "city": "City",
            "highway": "Highway",
            "mixed": "Mixed",
            "week": "Week",
            "month": "Month",
            "year": "Year",
            "official": "Official",
            "actual": "Actual",
            "refuelings": "Refuelings",
            "average": "Average",
            "total_cost": "Total Cost",
            "difference": "Difference",
            "unusual_consumption": "Unusual Consumption",
            "unusual_desc": "Actual consumption significantly differs from official. Consider vehicle service.",
            "add_trip": "Add Trip",
            "no_trips": "No trips recorded",
            "trip_history": "Trip History",
            "consumption_chart": "Consumption Chart",
            "chart_desc": "At least 2 refuelings needed to display chart",
            "fuel_tips": "Fuel Saving Tips",
            "new_trip": "New Trip",
            "kilometers": "Kilometers Driven",
            "liters": "Fuel Amount (liters)",
            "price_per_liter": "Price per Liter (optional)",
            "fuel_type": "Fuel Type",
            "driving_condition": "Driving Condition",
            "date_time": "Date and Time of Refueling",
            "consumption": "Consumption",
            "price": "Price",
            "export": "Export",
            "export_data": "Export Data",
            "export_csv": "Export to CSV",
            "export_pdf": "Export to PDF Format",
            "export_desc": "Data will be exported in text format that you can open in Excel or other applications.",
            "close": "Close",
            "share": "Share",
            "avg_consumption": "Average Consumption",
            "total_liters": "Total Liters",
            "total_kilometers": "Total Kilometers",
            "consumption_by_type": "Consumption by Type",
            "language": "Language",
            "serbian": "Serbian",
            "english": "English",
            "co2_emissions": "CO2 Emissions",
            "total_co2": "Total CO2",
            "trip_details": "Trip Details",
            "vehicle_details": "Vehicle Details",
            "maintenance": "Maintenance",
            "small_service": "Small Service",
            "big_service": "Big Service",
            "add_service": "Add Service",
            "add_repair": "Add Repair",
            "service_book": "Service Book",
            "brakes": "Brakes",
            "tires": "Tires",
            "battery": "Battery",
            "airFilter": "Air Filter",
            "fuelFilter": "Fuel Filter",
            "sparkPlugs": "Spark Plugs",
            "transmission": "Transmission",
            "cooling": "Cooling System",
            "suspension": "Suspension",
            "other": "Other",
            "edit_vehicle": "Edit Vehicle",
            "delete_vehicle": "Delete Vehicle",
            "confirm_delete": "Confirm Deletion",
            "delete_message": "Are you sure you want to delete this vehicle? All related data will be deleted.",
            "delete": "Delete",
            "service_type": "Service Type",
            "service_date": "Service Date",
            "service_location": "Service Location",
            "service_cost": "Service Cost",
            "service_kilometers": "Kilometers",
            "next_service": "Next Service",
            "km_until_service": "km until service",
            "overdue": "Overdue",
            "no_services": "No services recorded",
            "service_history": "Service History",
            "update_km": "Update Kilometers",
            "current_km": "Current Kilometers",
            "export_settings": "Export Data",
            "export_services": "Export Services",
            "export_statistics": "Export Statistics",
            "export_trips": "Export Trips",
            "export_all": "Export All Data",
            "select_data": "Select Data",
            "select_vehicle_export": "Select Vehicle",
            "all_vehicles": "All Vehicles"
        ]
    ]
}

struct MainTabView: View {
    @StateObject private var localization = LocalizationManager()
    @AppStorage("vehicles_data") private var vehiclesData: Data = Data()
    @AppStorage("entries_data") private var entriesData: Data = Data()
    @AppStorage("services_data") private var servicesData: Data = Data()
    @State private var vehicles: [Vehicle] = []
    @State private var fuelEntries: [FuelEntry] = []
    @State private var serviceRecords: [ServiceRecord] = []
    
    var body: some View {
        TabView {
            VehiclesView(vehicles: $vehicles, fuelEntries: $fuelEntries, serviceRecords: $serviceRecords)
                .tabItem {
                    Label(localization.translate("vehicles"), systemImage: "car.fill")
                }
            
            TripDiaryView(vehicles: vehicles, fuelEntries: $fuelEntries)
                .tabItem {
                    Label(localization.translate("trip_diary"), systemImage: "book.fill")
                }
            
            ServiceBookView(vehicles: vehicles, serviceRecords: serviceRecords)
                .tabItem {
                    Label(localization.translate("service_book"), systemImage: "wrench.and.screwdriver.fill")
                }
            
            AllStatisticsView(vehicles: vehicles, fuelEntries: fuelEntries)
                .tabItem {
                    Label(localization.translate("statistics"), systemImage: "chart.bar.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label(localization.translate("settings"), systemImage: "gearshape.fill")
                }
        }
        .environmentObject(localization)
        .onAppear {
            loadData()
        }
        .onChange(of: vehicles) { _, _ in
            saveData()
        }
        .onChange(of: fuelEntries) { _, _ in
            saveData()
        }
        .onChange(of: serviceRecords) { _, _ in
            saveData()
        }
    }
    
    func loadData() {
        if let decoded = try? JSONDecoder().decode([Vehicle].self, from: vehiclesData) {
            vehicles = decoded
        }
        if let decoded = try? JSONDecoder().decode([FuelEntry].self, from: entriesData) {
            fuelEntries = decoded
        }
        if let decoded = try? JSONDecoder().decode([ServiceRecord].self, from: servicesData) {
            serviceRecords = decoded
        }
    }
    
    func saveData() {
        if let encoded = try? JSONEncoder().encode(vehicles) {
            vehiclesData = encoded
        }
        if let encoded = try? JSONEncoder().encode(fuelEntries) {
            entriesData = encoded
        }
        if let encoded = try? JSONEncoder().encode(serviceRecords) {
            servicesData = encoded
        }
    }
}

struct Vehicle: Identifiable, Codable {
    var id = UUID()
    var brand: String
    var model: String
    var year: Int
    var engineType: EngineType
    var horsePower: Int
    var engineCapacity: Double
    var officialConsumption: Double
    var currentKilometers: Double = 0
}

enum ServiceType: String, Codable, CaseIterable {
    case small
    case big
    case brakes
    case tires
    case battery
    case airFilter
    case fuelFilter
    case sparkPlugs
    case transmission
    case cooling
    case suspension
    case other
    
    func interval() -> Double? {
        switch self {
        case .small: return 10000
        case .big: return 60000
        default: return nil
        }
    }
    
    func isMainService() -> Bool {
        return self == .small || self == .big
    }
}

struct ServiceRecord: Identifiable, Codable {
    var id = UUID()
    var vehicleId: UUID
    var serviceType: ServiceType
    var date: Date
    var kilometers: Double
    var cost: Double
    var location: String
    var notes: String?
}

enum EngineType: String, Codable, CaseIterable {
    case gasoline
    case diesel
    case hybrid
    case electric
    
    func co2Factor() -> Double {
        switch self {
        case .gasoline: return 2.31
        case .diesel: return 2.68
        case .hybrid: return 1.5
        case .electric: return 0.0
        }
    }
}

enum FuelType: String, Codable, CaseIterable {
    case gasoline
    case diesel
    case lng
}

enum DrivingCondition: String, Codable, CaseIterable {
    case city
    case highway
    case mixed
}

enum StatisticsPeriod: String, CaseIterable {
    case week
    case month
    case year
}

struct FuelEntry: Identifiable, Codable {
    var id = UUID()
    var vehicleId: UUID
    var date: Date
    var kilometers: Double
    var liters: Double
    var pricePerLiter: Double?
    var fuelType: FuelType
    var drivingCondition: DrivingCondition
    var notes: String?
    
    func co2Emissions(engineType: EngineType) -> Double {
        return liters * engineType.co2Factor()
    }
}

struct VehiclesView: View {
    @Binding var vehicles: [Vehicle]
    @Binding var fuelEntries: [FuelEntry]
    @Binding var serviceRecords: [ServiceRecord]
    @State private var showingAddVehicle = false
    @State private var vehicleToDelete: Vehicle?
    @State private var showingDeleteAlert = false
    @EnvironmentObject var localization: LocalizationManager
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    if vehicles.isEmpty {
                        VStack(spacing: 16) {
                            Image(systemName: "car.fill")
                                .font(.system(size: 60))
                                .foregroundStyle(.gray)
                            
                            Text(localization.translate("no_vehicles"))
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text(localization.translate("add_vehicle_desc"))
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            Button {
                                showingAddVehicle = true
                            } label: {
                                Label(localization.translate("add_vehicle"), systemImage: "plus.circle.fill")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue, in: RoundedRectangle(cornerRadius: 12))
                            }
                            .padding(.horizontal)
                        }
                        .padding(.top, 60)
                    } else {
                        ForEach($vehicles) { $vehicle in
                            NavigationLink {
                                VehicleDetailView(vehicle: $vehicle, vehicles: $vehicles, fuelEntries: $fuelEntries, serviceRecords: $serviceRecords)
                            } label: {
                                VehicleCard(vehicle: vehicle, entries: fuelEntries.filter { $0.vehicleId == vehicle.id })
                            }
                            .buttonStyle(.plain)
                            .contextMenu {
                                Button {
                                    vehicleToDelete = vehicle
                                    showingDeleteAlert = true
                                } label: {
                                    Label(localization.translate("delete_vehicle"), systemImage: "trash")
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle(localization.translate("vehicles"))
            .toolbar {
                if !vehicles.isEmpty {
                    Button {
                        showingAddVehicle = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddVehicle) {
                AddVehicleView(vehicles: $vehicles)
            }
            .alert(localization.translate("confirm_delete"), isPresented: $showingDeleteAlert, presenting: vehicleToDelete) { vehicle in
                Button(localization.translate("delete"), role: .destructive) {
                    deleteVehicle(vehicle)
                }
                Button(localization.translate("cancel"), role: .cancel) {}
            } message: { _ in
                Text(localization.translate("delete_message"))
            }
        }
    }
    
    func deleteVehicle(_ vehicle: Vehicle) {
        fuelEntries.removeAll { $0.vehicleId == vehicle.id }
        serviceRecords.removeAll { $0.vehicleId == vehicle.id }
        vehicles.removeAll { $0.id == vehicle.id }
    }
}

struct TripDiaryView: View {
    let vehicles: [Vehicle]
    @Binding var fuelEntries: [FuelEntry]
    @EnvironmentObject var localization: LocalizationManager
    @State private var selectedVehicle: Vehicle?
    
    var allEntries: [FuelEntry] {
        fuelEntries.sorted { $0.date > $1.date }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    if !vehicles.isEmpty {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                FilterChip(title: "All", isSelected: selectedVehicle == nil) {
                                    selectedVehicle = nil
                                }
                                
                                ForEach(vehicles) { vehicle in
                                    FilterChip(title: "\(vehicle.brand) \(vehicle.model)", isSelected: selectedVehicle?.id == vehicle.id) {
                                        selectedVehicle = vehicle
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    let filteredEntries = selectedVehicle == nil ? allEntries : allEntries.filter { $0.vehicleId == selectedVehicle?.id }
                    
                    if filteredEntries.isEmpty {
                        VStack(spacing: 12) {
                            Image(systemName: "book.closed")
                                .font(.system(size: 50))
                                .foregroundStyle(.gray)
                            Text(localization.translate("no_trips"))
                                .font(.headline)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.top, 60)
                    } else {
                        ForEach(filteredEntries) { entry in
                            if let vehicle = vehicles.first(where: { $0.id == entry.vehicleId }) {
                                let previousEntry = getPreviousEntry(for: entry, in: fuelEntries.filter { $0.vehicleId == vehicle.id })
                                TripDiaryCard(entry: entry, vehicle: vehicle, previousEntry: previousEntry)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle(localization.translate("trip_diary"))
        }
    }
    
    func getPreviousEntry(for entry: FuelEntry, in entries: [FuelEntry]) -> FuelEntry? {
        let sorted = entries.sorted { $0.date < $1.date }
        guard let index = sorted.firstIndex(where: { $0.id == entry.id }), index > 0 else { return nil }
        return sorted[index - 1]
    }
}

struct FilterChip: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subheadline)
                .fontWeight(isSelected ? .semibold : .regular)
                .foregroundStyle(isSelected ? .white : .primary)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(isSelected ? Color.blue : Color(.systemGray6), in: Capsule())
        }
    }
}

struct TripDiaryCard: View {
    let entry: FuelEntry
    let vehicle: Vehicle
    let previousEntry: FuelEntry?
    @EnvironmentObject var localization: LocalizationManager
    
    var consumption: Double? {
        guard let prev = previousEntry else { return nil }
        let distance = entry.kilometers - prev.kilometers
        guard distance > 0 else { return nil }
        return (entry.liters / distance) * 100
    }
    
    var distance: Double? {
        guard let prev = previousEntry else { return nil }
        return entry.kilometers - prev.kilometers
    }
    
    var co2: Double {
        entry.co2Emissions(engineType: vehicle.engineType)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(vehicle.brand) \(vehicle.model)")
                        .font(.headline)
                    Text(entry.date, style: .date)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Text(entry.date, style: .time)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Divider()
            
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 4) {
                    Label(String(format: "%.1f km", entry.kilometers), systemImage: "road.lanes")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    if let dist = distance {
                        Text(String(format: "+%.0f km", dist))
                            .font(.caption2)
                            .foregroundStyle(.blue)
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Label(String(format: "%.2f L", entry.liters), systemImage: "fuelpump.fill")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    if let cons = consumption {
                        Text(String(format: "%.1f L/100km", cons))
                            .font(.caption2)
                            .foregroundStyle(.green)
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Label(translateEnum(entry.drivingCondition), systemImage: "car.fill")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text(String(format: "%.1f kg CO₂", co2))
                        .font(.caption2)
                        .foregroundStyle(.orange)
                }
            }
            
            if let price = entry.pricePerLiter {
                HStack {
                    Text("\(localization.translate("price")):")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text(String(format: "%.2f RSD", price * entry.liters))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
    
    func translateEnum(_ condition: DrivingCondition) -> String {
        return localization.translate(condition.rawValue)
    }
}

struct AllStatisticsView: View {
    let vehicles: [Vehicle]
    let fuelEntries: [FuelEntry]
    @EnvironmentObject var localization: LocalizationManager
    
    var totalCO2: Double {
        var total = 0.0
        for entry in fuelEntries {
            if let vehicle = vehicles.first(where: { $0.id == entry.vehicleId }) {
                total += entry.co2Emissions(engineType: vehicle.engineType)
            }
        }
        return total
    }
    
    var totalCost: Double {
        fuelEntries.compactMap { $0.pricePerLiter.map { $0 * $0 } }.reduce(0, +)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    if vehicles.isEmpty {
                        VStack(spacing: 12) {
                            Image(systemName: "chart.bar")
                                .font(.system(size: 50))
                                .foregroundStyle(.gray)
                            Text(localization.translate("no_vehicles"))
                                .font(.headline)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.top, 60)
                    } else {
                        VStack(spacing: 12) {
                            StatCard(title: localization.translate("total_cost"), value: String(format: "%.0f RSD", totalCost), icon: "banknote")
                            StatCard(title: localization.translate("total_co2"), value: String(format: "%.1f kg", totalCO2), icon: "leaf.fill")
                            StatCard(title: localization.translate("refuelings"), value: "\(fuelEntries.count)", icon: "fuelpump.fill")
                        }
                        
                        ForEach(vehicles) { vehicle in
                            NavigationLink {
                                VehicleStatisticsView(vehicle: vehicle, entries: fuelEntries.filter { $0.vehicleId == vehicle.id })
                            } label: {
                                VehicleStatCard(vehicle: vehicle, entries: fuelEntries.filter { $0.vehicleId == vehicle.id })
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(localization.translate("statistics"))
        }
    }
}

struct VehicleStatCard: View {
    let vehicle: Vehicle
    let entries: [FuelEntry]
    @EnvironmentObject var localization: LocalizationManager
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("\(vehicle.brand) \(vehicle.model)")
                .font(.headline)
            
            HStack(spacing: 16) {
                Label("\(entries.count)", systemImage: "fuelpump.fill")
                    .font(.caption)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.tertiary)
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
}

struct SettingsView: View {
    @EnvironmentObject var localization: LocalizationManager
    @State private var showingExportOptions = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(localization.translate("language"))
                            .font(.headline)
                        
                        Button {
                            localization.currentLanguage = "sr"
                        } label: {
                            HStack {
                                Text(localization.translate("serbian"))
                                Spacer()
                                if localization.currentLanguage == "sr" {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                            .padding()
                            .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                        }
                        .buttonStyle(.plain)
                        
                        Button {
                            localization.currentLanguage = "en"
                        } label: {
                            HStack {
                                Text(localization.translate("english"))
                                Spacer()
                                if localization.currentLanguage == "en" {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                            .padding()
                            .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                        }
                        .buttonStyle(.plain)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text(localization.translate("export_settings"))
                            .font(.headline)
                        
                        Button {
                            showingExportOptions = true
                        } label: {
                            HStack {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundStyle(.blue)
                                Text(localization.translate("export_all"))
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.tertiary)
                            }
                            .padding()
                            .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle(localization.translate("settings"))
            .sheet(isPresented: $showingExportOptions) {
                GlobalExportView()
            }
        }
    }
}

struct GlobalExportView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var localization: LocalizationManager
    @AppStorage("vehicles_data") private var vehiclesData: Data = Data()
    @AppStorage("entries_data") private var entriesData: Data = Data()
    @AppStorage("services_data") private var servicesData: Data = Data()
    
    @State private var vehicles: [Vehicle] = []
    @State private var fuelEntries: [FuelEntry] = []
    @State private var serviceRecords: [ServiceRecord] = []
    
    @State private var selectedVehicle: Vehicle?
    @State private var exportTrips = true
    @State private var exportServices = true
    @State private var exportStatistics = true
    @State private var showingShareSheet = false
    @State private var exportText = ""
    @State private var exportFormat: ExportFormat = .csv
    
    enum ExportFormat: String, CaseIterable {
        case csv = "CSV"
        case pdf = "PDF"
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(localization.translate("select_vehicle_export"))
                            .font(.headline)
                        
                        Picker(localization.translate("select_vehicle_export"), selection: $selectedVehicle) {
                            Text(localization.translate("all_vehicles")).tag(nil as Vehicle?)
                            ForEach(vehicles) { vehicle in
                                Text("\(vehicle.brand) \(vehicle.model)").tag(vehicle as Vehicle?)
                            }
                        }
                        .pickerStyle(.menu)
                        .padding()
                        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text(localization.translate("select_data"))
                            .font(.headline)
                        
                        Toggle(localization.translate("export_trips"), isOn: $exportTrips)
                            .padding()
                            .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                        
                        Toggle(localization.translate("export_services"), isOn: $exportServices)
                            .padding()
                            .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                        
                        Toggle(localization.translate("export_statistics"), isOn: $exportStatistics)
                            .padding()
                            .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Format")
                            .font(.headline)
                        
                        Picker("Format", selection: $exportFormat) {
                            ForEach(ExportFormat.allCases, id: \.self) { format in
                                Text(format.rawValue).tag(format)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    Button {
                        generateExport()
                        showingShareSheet = true
                    } label: {
                        Label(localization.translate("export"), systemImage: "square.and.arrow.up")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue, in: RoundedRectangle(cornerRadius: 12))
                    }
                    .disabled(!exportTrips && !exportServices && !exportStatistics)
                }
                .padding()
            }
            .navigationTitle(localization.translate("export_data"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(localization.translate("cancel")) {
                        dismiss()
                    }
                }
            }
            .sheet(isPresented: $showingShareSheet) {
                ShareSheet(text: exportText)
            }
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        if let decoded = try? JSONDecoder().decode([Vehicle].self, from: vehiclesData) {
            vehicles = decoded
        }
        if let decoded = try? JSONDecoder().decode([FuelEntry].self, from: entriesData) {
            fuelEntries = decoded
        }
        if let decoded = try? JSONDecoder().decode([ServiceRecord].self, from: servicesData) {
            serviceRecords = decoded
        }
    }
    
    func generateExport() {
        if exportFormat == .csv {
            exportText = generateCSV()
        } else {
            exportText = generatePDF()
        }
    }
    
    func generateCSV() -> String {
        var csv = ""
        let filteredVehicles = selectedVehicle != nil ? [selectedVehicle!] : vehicles
        
        for vehicle in filteredVehicles {
            csv += "VOZILO: \(vehicle.brand) \(vehicle.model)\n"
            csv += "Godina: \(vehicle.year), Tip motora: \(vehicle.engineType.rawValue)\n\n"
            
            if exportTrips {
                csv += "VOŽNJE\n"
                csv += "Datum,Vreme,Kilometri,Litara,Cena po litru,Tip goriva,Tip vožnje,CO2 (kg)\n"
                
                let entries = fuelEntries.filter { $0.vehicleId == vehicle.id }.sorted { $0.date < $1.date }
                for entry in entries {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "dd.MM.yyyy"
                    let date = dateFormatter.string(from: entry.date)
                    
                    dateFormatter.dateFormat = "HH:mm"
                    let time = dateFormatter.string(from: entry.date)
                    
                    let price = entry.pricePerLiter != nil ? String(format: "%.2f", entry.pricePerLiter!) : ""
                    let co2 = String(format: "%.2f", entry.co2Emissions(engineType: vehicle.engineType))
                    
                    csv += "\(date),\(time),\(entry.kilometers),\(entry.liters),\(price),\(entry.fuelType.rawValue),\(entry.drivingCondition.rawValue),\(co2)\n"
                }
                csv += "\n"
            }
            
            if exportServices {
                csv += "SERVISI\n"
                csv += "Datum,Tip servisa,Kilometri,Cena,Mesto,Napomene\n"
                
                let services = serviceRecords.filter { $0.vehicleId == vehicle.id }.sorted { $0.date < $1.date }
                for service in services {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
                    let date = dateFormatter.string(from: service.date)
                    let notes = service.notes ?? ""
                    
                    csv += "\(date),\(getServiceTypeName(service.serviceType)),\(service.kilometers),\(service.cost),\(service.location),\(notes)\n"
                }
                csv += "\n"
            }
            
            if exportStatistics {
                csv += "STATISTIKA\n"
                let entries = fuelEntries.filter { $0.vehicleId == vehicle.id }.sorted { $0.date < $1.date }
                
                if entries.count >= 2 {
                    var totalConsumption = 0.0
                    var totalDistance = 0.0
                    var totalCost = 0.0
                    var totalCO2 = 0.0
                    
                    for i in 1..<entries.count {
                        let distance = entries[i].kilometers - entries[i-1].kilometers
                        if distance > 0 {
                            totalDistance += distance
                            totalConsumption += entries[i].liters
                            totalCO2 += entries[i].co2Emissions(engineType: vehicle.engineType)
                            if let price = entries[i].pricePerLiter {
                                totalCost += price * entries[i].liters
                            }
                        }
                    }
                    
                    let avgConsumption = (totalConsumption / totalDistance) * 100
                    csv += "Prosečna potrošnja: \(String(format: "%.2f", avgConsumption)) L/100km\n"
                    csv += "Ukupni troškovi: \(String(format: "%.2f", totalCost)) RSD\n"
                    csv += "Ukupno kilometara: \(String(format: "%.0f", totalDistance)) km\n"
                    csv += "Ukupno litara: \(String(format: "%.2f", totalConsumption)) L\n"
                    csv += "Ukupna CO2 emisija: \(String(format: "%.2f", totalCO2)) kg\n"
                }
                csv += "\n\n"
            }
        }
        
        return csv
    }
    
    func generatePDF() -> String {
        var text = "IZVEŠTAJ O POTROŠNJI GORIVA I SERVISIMA\n"
        text += "========================================\n\n"
        
        let filteredVehicles = selectedVehicle != nil ? [selectedVehicle!] : vehicles
        
        for vehicle in filteredVehicles {
            text += "VOZILO: \(vehicle.brand) \(vehicle.model)\n"
            text += "Godina: \(vehicle.year)\n"
            text += "Tip motora: \(vehicle.engineType.rawValue)\n"
            text += "Konjska snaga: \(vehicle.horsePower) HP\n"
            text += "Službena potrošnja: \(vehicle.officialConsumption) L/100km\n\n"
            
            if exportStatistics {
                text += "STATISTIKA\n"
                text += "----------\n"
                
                let entries = fuelEntries.filter { $0.vehicleId == vehicle.id }.sorted { $0.date < $1.date }
                
                if entries.count >= 2 {
                    var totalConsumption = 0.0
                    var totalDistance = 0.0
                    var totalCost = 0.0
                    var totalCO2 = 0.0
                    
                    for i in 1..<entries.count {
                        let distance = entries[i].kilometers - entries[i-1].kilometers
                        if distance > 0 {
                            totalDistance += distance
                            totalConsumption += entries[i].liters
                            totalCO2 += entries[i].co2Emissions(engineType: vehicle.engineType)
                            if let price = entries[i].pricePerLiter {
                                totalCost += price * entries[i].liters
                            }
                        }
                    }
                    
                    let avgConsumption = (totalConsumption / totalDistance) * 100
                    text += "Prosečna potrošnja: \(String(format: "%.2f", avgConsumption)) L/100km\n"
                    text += "Ukupni troškovi: \(String(format: "%.2f", totalCost)) RSD\n"
                    text += "Ukupno kilometara: \(String(format: "%.0f", totalDistance)) km\n"
                    text += "Ukupno litara: \(String(format: "%.2f", totalConsumption)) L\n"
                    text += "Ukupna CO2 emisija: \(String(format: "%.2f", totalCO2)) kg\n"
                    text += "Broj punjenja: \(entries.count)\n"
                }
                text += "\n"
            }
            
            if exportServices {
                text += "ISTORIJA SERVISA\n"
                text += "----------------\n"
                
                let services = serviceRecords.filter { $0.vehicleId == vehicle.id }.sorted { $0.date < $1.date }
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
                
                for service in services {
                    text += "\nDatum: \(dateFormatter.string(from: service.date))\n"
                    text += "Tip: \(getServiceTypeName(service.serviceType))\n"
                    text += "Kilometri: \(String(format: "%.0f", service.kilometers)) km\n"
                    text += "Cena: \(String(format: "%.2f", service.cost)) RSD\n"
                    text += "Mesto: \(service.location)\n"
                    if let notes = service.notes {
                        text += "Napomene: \(notes)\n"
                    }
                    text += "---\n"
                }
                text += "\n"
            }
            
            if exportTrips {
                text += "ISTORIJA VOŽNJI\n"
                text += "---------------\n"
                
                let entries = fuelEntries.filter { $0.vehicleId == vehicle.id }.sorted { $0.date < $1.date }
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
                
                for entry in entries {
                    text += "\nDatum: \(dateFormatter.string(from: entry.date))\n"
                    text += "Kilometri: \(String(format: "%.1f", entry.kilometers)) km\n"
                    text += "Litara: \(String(format: "%.2f", entry.liters)) L\n"
                    if let price = entry.pricePerLiter {
                        text += "Cena: \(String(format: "%.2f", price * entry.liters)) RSD\n"
                    }
                    text += "Tip goriva: \(entry.fuelType.rawValue)\n"
                    text += "Tip vožnje: \(entry.drivingCondition.rawValue)\n"
                    text += "CO2: \(String(format: "%.2f", entry.co2Emissions(engineType: vehicle.engineType))) kg\n"
                    text += "---\n"
                }
                text += "\n"
            }
            
            text += "\n========================================\n\n"
        }
        
        return text
    }
    
    func getServiceTypeName(_ type: ServiceType) -> String {
        switch type {
        case .small: return localization.translate("small_service")
        case .big: return localization.translate("big_service")
        case .brakes: return localization.translate("brakes")
        case .tires: return localization.translate("tires")
        case .battery: return localization.translate("battery")
        case .airFilter: return localization.translate("airFilter")
        case .fuelFilter: return localization.translate("fuelFilter")
        case .sparkPlugs: return localization.translate("sparkPlugs")
        case .transmission: return localization.translate("transmission")
        case .cooling: return localization.translate("cooling")
        case .suspension: return localization.translate("suspension")
        case .other: return localization.translate("other")
        }
    }
}

struct VehicleCard: View {
    let vehicle: Vehicle
    let entries: [FuelEntry]
    @EnvironmentObject var localization: LocalizationManager
    
    var averageConsumption: Double? {
        guard entries.count >= 2 else { return nil }
        let sorted = entries.sorted { $0.date < $1.date }
        var totalConsumption = 0.0
        var totalDistance = 0.0
        
        for i in 1..<sorted.count {
            let distance = sorted[i].kilometers - sorted[i-1].kilometers
            if distance > 0 {
                totalDistance += distance
                totalConsumption += sorted[i].liters
            }
        }
        
        guard totalDistance > 0 else { return nil }
        return (totalConsumption / totalDistance) * 100
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(vehicle.brand) \(vehicle.model)")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("\(vehicle.year) • \(localization.translate(vehicle.engineType.rawValue))")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.tertiary)
            }
            
            Divider()
            
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(localization.translate("official"))
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text(String(format: "%.1f L/100km", vehicle.officialConsumption))
                        .font(.headline)
                }
                
                if let avg = averageConsumption {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(localization.translate("actual"))
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        Text(String(format: "%.1f L/100km", avg))
                            .font(.headline)
                            .foregroundStyle(.blue)
                    }
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 4) {
                    Text(localization.translate("refuelings"))
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("\(entries.count)")
                        .font(.headline)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
}

struct VehicleStatisticsView: View {
    let vehicle: Vehicle
    let entries: [FuelEntry]
    @EnvironmentObject var localization: LocalizationManager
    @State private var selectedPeriod: StatisticsPeriod = .month
    
    func getFilteredEntries() -> [FuelEntry] {
        let calendar = Calendar.current
        let now = Date()
        
        return entries.filter { entry in
            switch selectedPeriod {
            case .week:
                return calendar.isDate(entry.date, equalTo: now, toGranularity: .weekOfYear)
            case .month:
                return calendar.isDate(entry.date, equalTo: now, toGranularity: .month)
            case .year:
                return calendar.isDate(entry.date, equalTo: now, toGranularity: .year)
            }
        }
    }
    
    func calculateStats() -> (avgConsumption: Double, totalCost: Double, totalLiters: Double, totalDistance: Double, totalCO2: Double) {
        let filtered = getFilteredEntries().sorted { $0.date < $1.date }
        guard filtered.count >= 2 else { return (0, 0, 0, 0, 0) }
        
        var totalConsumption = 0.0
        var totalDistance = 0.0
        var totalCost = 0.0
        var totalLiters = 0.0
        var totalCO2 = 0.0
        
        for i in 1..<filtered.count {
            let distance = filtered[i].kilometers - filtered[i-1].kilometers
            if distance > 0 {
                totalDistance += distance
                totalConsumption += filtered[i].liters
                totalLiters += filtered[i].liters
                totalCO2 += filtered[i].co2Emissions(engineType: vehicle.engineType)
                if let price = filtered[i].pricePerLiter {
                    totalCost += price * filtered[i].liters
                }
            }
        }
        
        let avgConsumption = totalDistance > 0 ? (totalConsumption / totalDistance) * 100 : 0
        return (avgConsumption, totalCost, totalLiters, totalDistance, totalCO2)
    }
    
    var chartDataByCondition: [(condition: DrivingCondition, consumption: Double)] {
        let sorted = entries.sorted { $0.date < $1.date }
        var dataMap: [DrivingCondition: (totalLiters: Double, totalDistance: Double)] = [:]
        
        for i in 1..<sorted.count {
            let distance = sorted[i].kilometers - sorted[i-1].kilometers
            if distance > 0 {
                let condition = sorted[i].drivingCondition
                let current = dataMap[condition] ?? (0, 0)
                dataMap[condition] = (current.totalLiters + sorted[i].liters, current.totalDistance + distance)
            }
        }
        
        return dataMap.compactMap { (condition, values) in
            let consumption = (values.totalLiters / values.totalDistance) * 100
            return (condition, consumption)
        }.sorted { $0.consumption < $1.consumption }
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Picker("Period", selection: $selectedPeriod) {
                    Text(localization.translate("week")).tag(StatisticsPeriod.week)
                    Text(localization.translate("month")).tag(StatisticsPeriod.month)
                    Text(localization.translate("year")).tag(StatisticsPeriod.year)
                }
                .pickerStyle(.segmented)
                
                let stats = calculateStats()
                
                VStack(spacing: 12) {
                    StatCard(title: localization.translate("avg_consumption"), value: String(format: "%.1f L/100km", stats.avgConsumption), icon: "gauge.medium")
                    StatCard(title: localization.translate("total_cost"), value: String(format: "%.2f RSD", stats.totalCost), icon: "banknote")
                    StatCard(title: localization.translate("total_liters"), value: String(format: "%.1f L", stats.totalLiters), icon: "fuelpump.fill")
                    StatCard(title: localization.translate("total_kilometers"), value: String(format: "%.0f km", stats.totalDistance), icon: "road.lanes")
                    StatCard(title: localization.translate("total_co2"), value: String(format: "%.1f kg", stats.totalCO2), icon: "leaf.fill")
                }
                
                if !chartDataByCondition.isEmpty {
                    VStack(alignment: .leading, spacing: 12) {
                        Text(localization.translate("consumption_by_type"))
                            .font(.headline)
                        
                        Chart {
                            ForEach(chartDataByCondition, id: \.condition) { item in
                                BarMark(
                                    x: .value("Consumption", item.consumption),
                                    y: .value("Condition", localization.translate(item.condition.rawValue))
                                )
                                .foregroundStyle(.blue)
                            }
                        }
                        .frame(height: 200)
                        .chartXAxisLabel("L/100km")
                    }
                    .padding()
                    .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text(localization.translate("consumption_by_type"))
                        .font(.headline)
                    
                    ForEach(DrivingCondition.allCases, id: \.self) { condition in
                        let conditionEntries = getFilteredEntries().filter { $0.drivingCondition == condition }
                        if !conditionEntries.isEmpty {
                            HStack {
                                Text(localization.translate(condition.rawValue))
                                    .font(.subheadline)
                                Spacer()
                                Text("\(conditionEntries.count) \(localization.translate("refuelings").lowercased())")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }
                            .padding()
                            .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 8))
                        }
                    }
                }
            }
            .padding()
        }
        .navigationTitle(localization.translate("statistics"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddVehicleView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var vehicles: [Vehicle]
    
    @State private var brand = ""
    @State private var model = ""
    @State private var year = Calendar.current.component(.year, from: Date())
    @State private var engineType: EngineType = .gasoline
    @State private var horsePower = ""
    @State private var engineCapacity = ""
    @State private var officialConsumption = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Marka automobila")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. Audi", text: $brand)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Model automobila")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. A4", text: $model)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Godina proizvodnje")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Picker("Godina", selection: $year) {
                            ForEach((1990...Calendar.current.component(.year, from: Date())).reversed(), id: \.self) { year in
                                Text("\(year)").tag(year)
                            }
                        }
                        .pickerStyle(.wheel)
                        .frame(height: 120)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Tip motora")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Picker("Tip motora", selection: $engineType) {
                            ForEach(EngineType.allCases, id: \.self) { type in
                                Text(type.rawValue).tag(type)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Konjska snaga (HP)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 150", text: $horsePower)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Zapremina motora (ccm)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 2000", text: $engineCapacity)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Službena potrošnja (L/100km)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 6.5", text: $officialConsumption)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                    }
                }
                .padding()
            }
            .navigationTitle("Novo vozilo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Otkaži") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Dodaj") {
                        saveVehicle()
                    }
                    .disabled(!isValid)
                }
            }
        }
    }
    
    var isValid: Bool {
        !brand.isEmpty &&
        !model.isEmpty &&
        Int(horsePower) != nil &&
        Double(engineCapacity) != nil &&
        Double(officialConsumption) != nil
    }
    
    func saveVehicle() {
        let vehicle = Vehicle(
            brand: brand,
            model: model,
            year: year,
            engineType: engineType,
            horsePower: Int(horsePower) ?? 0,
            engineCapacity: Double(engineCapacity) ?? 0,
            officialConsumption: Double(officialConsumption) ?? 0
        )
        vehicles.append(vehicle)
        dismiss()
    }
}

struct VehicleDetailView: View {
    @Binding var vehicle: Vehicle
    @Binding var vehicles: [Vehicle]
    @Binding var fuelEntries: [FuelEntry]
    @Binding var serviceRecords: [ServiceRecord]
    @State private var showingAddEntry = false
    @State private var showingStatistics = false
    @State private var showingExport = false
    @State private var showingAddService = false
    @State private var showingUpdateKm = false
    @State private var showingEditVehicle = false
    @State private var showingServiceBook = false
    @EnvironmentObject var localization: LocalizationManager
    @Environment(\.dismiss) var dismiss
    
    var vehicleEntries: [FuelEntry] {
        fuelEntries.filter { $0.vehicleId == vehicle.id }.sorted { $0.date > $1.date }
    }
    
    var averageConsumption: Double? {
        guard vehicleEntries.count >= 2 else { return nil }
        let sorted = vehicleEntries.sorted { $0.date < $1.date }
        var totalConsumption = 0.0
        var totalDistance = 0.0
        
        for i in 1..<sorted.count {
            let distance = sorted[i].kilometers - sorted[i-1].kilometers
            if distance > 0 {
                totalDistance += distance
                totalConsumption += sorted[i].liters
            }
        }
        
        guard totalDistance > 0 else { return nil }
        return (totalConsumption / totalDistance) * 100
    }
    
    var totalCost: Double {
        vehicleEntries.compactMap { entry in
            if let price = entry.pricePerLiter {
                return price * entry.liters
            }
            return nil
        }.reduce(0, +)
    }
    
    var hasUnusualConsumption: Bool {
        guard let avg = averageConsumption else { return false }
        return abs(avg - vehicle.officialConsumption) > (vehicle.officialConsumption * 0.3)
    }
    
    var vehicleServices: [ServiceRecord] {
        serviceRecords.filter { $0.vehicleId == vehicle.id }.sorted { $0.date > $1.date }
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("\(vehicle.brand) \(vehicle.model)")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("\(vehicle.year) • \(localization.translate(vehicle.engineType.rawValue))")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                        Button {
                            showingUpdateKm = true
                        } label: {
                            VStack(alignment: .trailing, spacing: 4) {
                                Text(String(format: "%.0f km", vehicle.currentKilometers))
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Text("Ažuriraj")
                                    .font(.caption2)
                                    .foregroundStyle(.blue)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                
                ServiceProgressView(vehicle: vehicle, services: vehicleServices)
                
                if !vehicleEntries.isEmpty {
                    VStack(spacing: 12) {
                        HStack(spacing: 12) {
                            StatCard(title: "Prosek", value: String(format: "%.1f L/100km", averageConsumption ?? 0), icon: "gauge.medium")
                            StatCard(title: "Ukupni troškovi", value: String(format: "%.0f RSD", totalCost), icon: "banknote")
                        }
                        
                        HStack(spacing: 12) {
                            StatCard(title: "Punjenja", value: "\(vehicleEntries.count)", icon: "fuelpump.fill")
                            StatCard(title: "Razlika", value: String(format: "%+.1f%%", ((averageConsumption ?? 0) - vehicle.officialConsumption) / vehicle.officialConsumption * 100), icon: "chart.line.uptrend.xyaxis")
                        }
                    }
                    
                    if hasUnusualConsumption {
                        HStack(spacing: 12) {
                            Image(systemName: "exclamationmark.triangle.fill")
                                .foregroundStyle(.orange)
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Neuobičajena potrošnja")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("Stvarna potrošnja se značajno razlikuje od službene. Razmotrite servis vozila.")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.orange.opacity(0.1), in: RoundedRectangle(cornerRadius: 12))
                    }
                }
                
                HStack(spacing: 12) {
                    Button {
                        showingAddEntry = true
                    } label: {
                        Label(localization.translate("add_trip"), systemImage: "plus.circle.fill")
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue, in: RoundedRectangle(cornerRadius: 12))
                    }
                    
                    Button {
                        showingAddService = true
                    } label: {
                        Label(localization.translate("add_service"), systemImage: "wrench.fill")
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green, in: RoundedRectangle(cornerRadius: 12))
                    }
                    
                    if !vehicleEntries.isEmpty {
                        Menu {
                            Button {
                                showingStatistics = true
                            } label: {
                                Label(localization.translate("statistics"), systemImage: "chart.bar.fill")
                            }
                            
                            Button {
                                showingExport = true
                            } label: {
                                Label(localization.translate("export"), systemImage: "square.and.arrow.up")
                            }
                        } label: {
                            Image(systemName: "ellipsis.circle.fill")
                                .font(.title2)
                                .foregroundStyle(.blue)
                                .frame(width: 50, height: 50)
                                .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
                        }
                    }
                }
                
                if vehicleEntries.isEmpty {
                    VStack(spacing: 12) {
                        Image(systemName: "chart.line.uptrend.xyaxis")
                            .font(.system(size: 50))
                            .foregroundStyle(.gray)
                        Text("Nema unetih vožnji")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.top, 40)
                } else {
                    ConsumptionChartView(entries: vehicleEntries)
                    
                    FuelTipsView(averageConsumption: averageConsumption ?? 0, officialConsumption: vehicle.officialConsumption, entries: vehicleEntries)
                    
                    if !vehicleServices.isEmpty {
                        VStack(alignment: .leading, spacing: 12) {
                            Text(localization.translate("service_history"))
                                .font(.headline)
                            
                            ForEach(vehicleServices.prefix(3)) { service in
                                ServiceRecordRow(service: service)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text(localization.translate("trip_history"))
                            .font(.headline)
                        
                        ForEach(vehicleEntries.prefix(5)) { entry in
                            FuelEntryRow(entry: entry, previousEntry: getPreviousEntry(for: entry))
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
        }
        .navigationTitle("Detalji vozila")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Menu {
                    Button {
                        showingEditVehicle = true
                    } label: {
                        Label(localization.translate("edit_vehicle"), systemImage: "pencil")
                    }
                    
                    Button {
                        showingServiceBook = true
                    } label: {
                        Label(localization.translate("service_book"), systemImage: "book.fill")
                    }
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
        .sheet(isPresented: $showingAddEntry) {
            AddFuelEntryView(vehicle: vehicle, fuelEntries: $fuelEntries)
        }
        .sheet(isPresented: $showingStatistics) {
            StatisticsView(vehicle: vehicle, entries: vehicleEntries)
        }
        .sheet(isPresented: $showingExport) {
            ExportView(vehicle: vehicle, entries: vehicleEntries)
        }
        .sheet(isPresented: $showingAddService) {
            AddServiceView(vehicle: vehicle, serviceRecords: $serviceRecords, currentKm: $vehicle.currentKilometers)
        }
        .sheet(isPresented: $showingUpdateKm) {
            UpdateKilometersView(currentKilometers: $vehicle.currentKilometers)
        }
        .sheet(isPresented: $showingEditVehicle) {
            EditVehicleView(vehicle: $vehicle)
        }
        .sheet(isPresented: $showingServiceBook) {
            VehicleServiceBookView(vehicle: vehicle, serviceRecords: $serviceRecords)
        }
    }
    
    func getPreviousEntry(for entry: FuelEntry) -> FuelEntry? {
        let sorted = vehicleEntries.sorted { $0.date < $1.date }
        guard let index = sorted.firstIndex(where: { $0.id == entry.id }), index > 0 else { return nil }
        return sorted[index - 1]
    }
}

struct StatCard: View {
    let title: String
    let value: String
    let icon: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: icon)
                    .foregroundStyle(.blue)
                Spacer()
            }
            Text(value)
                .font(.title3)
                .fontWeight(.bold)
            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
}

struct ConsumptionChartView: View {
    let entries: [FuelEntry]
    
    var chartData: [(date: Date, consumption: Double)] {
        let sorted = entries.sorted { $0.date < $1.date }
        var data: [(Date, Double)] = []
        
        for i in 1..<sorted.count {
            let distance = sorted[i].kilometers - sorted[i-1].kilometers
            if distance > 0 {
                let consumption = (sorted[i].liters / distance) * 100
                data.append((sorted[i].date, consumption))
            }
        }
        
        return data
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Grafikon potrošnje")
                .font(.headline)
            
            if chartData.isEmpty {
                Text("Potrebno je najmanje 2 punjenja za prikaz grafikona")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding()
            } else {
                Chart {
                    ForEach(chartData, id: \.date) { item in
                        LineMark(
                            x: .value("Datum", item.date),
                            y: .value("Potrošnja", item.consumption)
                        )
                        .foregroundStyle(.blue)
                        
                        PointMark(
                            x: .value("Datum", item.date),
                            y: .value("Potrošnja", item.consumption)
                        )
                        .foregroundStyle(.blue)
                    }
                }
                .chartYAxisLabel("L/100km")
                .frame(height: 200)
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
}

struct FuelTipsView: View {
    let averageConsumption: Double
    let officialConsumption: Double
    let entries: [FuelEntry]
    
    var tips: [String] {
        var tipsList: [String] = []
        
        if averageConsumption > officialConsumption {
            let diff = ((averageConsumption - officialConsumption) / officialConsumption) * 100
            if diff > 20 {
                tipsList.append("Vaša potrošnja je \(String(format: "%.0f", diff))% veća od službene. Razmotrite serviranje vozila.")
            }
        }
        
        let cityEntries = entries.filter { $0.drivingCondition == .city }
        if Double(cityEntries.count) > (Double(entries.count) * 0.7) {
            tipsList.append("Većina vožnji je gradska. Pokušajte da koristite autoput kada je moguće za bolju efikasnost.")
        }
        
        tipsList.append("Redovno proveravajte pritisak u gumama - smanjen pritisak povećava potrošnju.")
        tipsList.append("Izbegavajte nagle ubrzavanja i kočenja za uštedu goriva.")
        
        return tipsList
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Saveti za smanjenje potrošnje")
                .font(.headline)
            
            ForEach(tips, id: \.self) { tip in
                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: "lightbulb.fill")
                        .foregroundStyle(.yellow)
                        .font(.caption)
                    Text(tip)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
}

struct StatisticsView: View {
    let vehicle: Vehicle
    let entries: [FuelEntry]
    @Environment(\.dismiss) var dismiss
    @State private var selectedPeriod: StatisticsPeriod = .month
    
    func getFilteredEntries() -> [FuelEntry] {
        let calendar = Calendar.current
        let now = Date()
        
        return entries.filter { entry in
            switch selectedPeriod {
            case .week:
                return calendar.isDate(entry.date, equalTo: now, toGranularity: .weekOfYear)
            case .month:
                return calendar.isDate(entry.date, equalTo: now, toGranularity: .month)
            case .year:
                return calendar.isDate(entry.date, equalTo: now, toGranularity: .year)
            }
        }
    }
    
    func calculateStats() -> (avgConsumption: Double, totalCost: Double, totalLiters: Double, totalDistance: Double) {
        let filtered = getFilteredEntries().sorted { $0.date < $1.date }
        guard filtered.count >= 2 else { return (0, 0, 0, 0) }
        
        var totalConsumption = 0.0
        var totalDistance = 0.0
        var totalCost = 0.0
        var totalLiters = 0.0
        
        for i in 1..<filtered.count {
            let distance = filtered[i].kilometers - filtered[i-1].kilometers
            if distance > 0 {
                totalDistance += distance
                totalConsumption += filtered[i].liters
                totalLiters += filtered[i].liters
                if let price = filtered[i].pricePerLiter {
                    totalCost += price * filtered[i].liters
                }
            }
        }
        
        let avgConsumption = totalDistance > 0 ? (totalConsumption / totalDistance) * 100 : 0
        return (avgConsumption, totalCost, totalLiters, totalDistance)
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Picker("Period", selection: $selectedPeriod) {
                        ForEach(StatisticsPeriod.allCases, id: \.self) { period in
                            Text(period.rawValue).tag(period)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    let stats = calculateStats()
                    
                    VStack(spacing: 12) {
                        StatCard(title: "Prosečna potrošnja", value: String(format: "%.1f L/100km", stats.avgConsumption), icon: "gauge.medium")
                        StatCard(title: "Ukupni troškovi", value: String(format: "%.2f RSD", stats.totalCost), icon: "banknote")
                        StatCard(title: "Ukupno litara", value: String(format: "%.1f L", stats.totalLiters), icon: "fuelpump.fill")
                        StatCard(title: "Ukupno kilometara", value: String(format: "%.0f km", stats.totalDistance), icon: "road.lanes")
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Potrošnja po tipu vožnje")
                            .font(.headline)
                        
                        ForEach(DrivingCondition.allCases, id: \.self) { condition in
                            let conditionEntries = getFilteredEntries().filter { $0.drivingCondition == condition }
                            if !conditionEntries.isEmpty {
                                HStack {
                                    Text(condition.rawValue)
                                        .font(.subheadline)
                                    Spacer()
                                    Text("\(conditionEntries.count) punjenja")
                                        .font(.subheadline)
                                        .foregroundStyle(.secondary)
                                }
                                .padding()
                                .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 8))
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Statistika")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Gotovo") {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct ExportView: View {
    let vehicle: Vehicle
    let entries: [FuelEntry]
    @Environment(\.dismiss) var dismiss
    @State private var showingShareSheet = false
    @State private var exportText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Button {
                        exportText = generateCSV()
                        showingShareSheet = true
                    } label: {
                        Label("Export u CSV", systemImage: "tablecells")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue, in: RoundedRectangle(cornerRadius: 12))
                    }
                    
                    Button {
                        exportText = generatePDF()
                        showingShareSheet = true
                    } label: {
                        Label("Export u PDF format", systemImage: "doc.text")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green, in: RoundedRectangle(cornerRadius: 12))
                    }
                    
                    Text("Podaci će biti izvezeni u tekstualnom formatu koji možete otvoriti u Excel-u ili drugim aplikacijama.")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .padding()
            }
            .navigationTitle("Export podataka")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Zatvori") {
                        dismiss()
                    }
                }
            }
            .sheet(isPresented: $showingShareSheet) {
                ShareSheet(text: exportText)
            }
        }
    }
    
    func generateCSV() -> String {
        var csv = "Datum,Vreme,Kilometri,Litara,Cena po litru,Tip goriva,Tip vožnje\n"
        
        for entry in entries.sorted(by: { $0.date < $1.date }) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy"
            let date = dateFormatter.string(from: entry.date)
            
            dateFormatter.dateFormat = "HH:mm"
            let time = dateFormatter.string(from: entry.date)
            
            let price = entry.pricePerLiter != nil ? String(format: "%.2f", entry.pricePerLiter!) : ""
            
            csv += "\(date),\(time),\(entry.kilometers),\(entry.liters),\(price),\(entry.fuelType.rawValue),\(entry.drivingCondition.rawValue)\n"
        }
        
        return csv
    }
    
    func generatePDF() -> String {
        var text = "IZVEŠTAJ O POTROŠNJI GORIVA\n\n"
        text += "Vozilo: \(vehicle.brand) \(vehicle.model)\n"
        text += "Godina: \(vehicle.year)\n"
        text += "Tip motora: \(vehicle.engineType.rawValue)\n\n"
        text += "ISTORIJA PUNJENJA:\n\n"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        
        for entry in entries.sorted(by: { $0.date < $1.date }) {
            text += "Datum: \(dateFormatter.string(from: entry.date))\n"
            text += "Kilometri: \(entry.kilometers) km\n"
            text += "Litara: \(entry.liters) L\n"
            if let price = entry.pricePerLiter {
                text += "Cena: \(String(format: "%.2f", price * entry.liters)) RSD\n"
            }
            text += "Tip: \(entry.fuelType.rawValue)\n"
            text += "Vožnja: \(entry.drivingCondition.rawValue)\n"
            text += "---\n"
        }
        
        return text
    }
}

struct ShareSheet: View {
    let text: String
    
    var body: some View {
        ShareLink(item: text) {
            Label("Podeli", systemImage: "square.and.arrow.up")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}

struct FuelEntryRow: View {
    let entry: FuelEntry
    let previousEntry: FuelEntry?
    
    var consumption: Double? {
        guard let prev = previousEntry else { return nil }
        let distance = entry.kilometers - prev.kilometers
        guard distance > 0 else { return nil }
        return (entry.liters / distance) * 100
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(entry.date, style: .date)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Text(entry.date, style: .time)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            HStack(spacing: 16) {
                Label("\(String(format: "%.1f", entry.kilometers)) km", systemImage: "road.lanes")
                    .font(.caption)
                Label("\(String(format: "%.2f", entry.liters)) L", systemImage: "fuelpump.fill")
                    .font(.caption)
                Label(entry.drivingCondition.rawValue, systemImage: "car.fill")
                    .font(.caption)
            }
            .foregroundStyle(.secondary)
            
            HStack {
                if let consumption = consumption {
                    Text("Potrošnja: \(String(format: "%.1f", consumption)) L/100km")
                        .font(.caption)
                        .foregroundStyle(.green)
                }
                
                Spacer()
                
                if let price = entry.pricePerLiter {
                    Text("Cena: \(String(format: "%.2f", (price * entry.liters))) RSD")
                        .font(.caption)
                        .foregroundStyle(.blue)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 8))
    }
}

struct AddFuelEntryView: View {
    let vehicle: Vehicle
    @Binding var fuelEntries: [FuelEntry]
    @Environment(\.dismiss) var dismiss
    
    @State private var kilometers = ""
    @State private var liters = ""
    @State private var pricePerLiter = ""
    @State private var fuelType: FuelType = .gasoline
    @State private var drivingCondition: DrivingCondition = .mixed
    @State private var date = Date()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Pređeni kilometri")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 45000", text: $kilometers)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Količina goriva (litara)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 40.5", text: $liters)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Cena po litru (opciono)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 189.90", text: $pricePerLiter)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Tip goriva")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Picker("Tip goriva", selection: $fuelType) {
                            ForEach(FuelType.allCases, id: \.self) { type in
                                Text(type.rawValue).tag(type)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Usmerenje vožnje")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Picker("Usmerenje", selection: $drivingCondition) {
                            ForEach(DrivingCondition.allCases, id: \.self) { condition in
                                Text(condition.rawValue).tag(condition)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Datum i vreme punjenja")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        DatePicker("", selection: $date)
                            .datePickerStyle(.graphical)
                    }
                }
                .padding()
            }
            .navigationTitle("Nova vožnja")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Otkaži") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Dodaj") {
                        saveEntry()
                    }
                    .disabled(!isValid)
                }
            }
        }
    }
    
    var isValid: Bool {
        Double(kilometers) != nil &&
        Double(liters) != nil
    }
    
    func saveEntry() {
        let price = pricePerLiter.isEmpty ? nil : Double(pricePerLiter)
        
        let entry = FuelEntry(
            vehicleId: vehicle.id,
            date: date,
            kilometers: Double(kilometers) ?? 0,
            liters: Double(liters) ?? 0,
            pricePerLiter: price,
            fuelType: fuelType,
            drivingCondition: drivingCondition
        )
        fuelEntries.append(entry)
        dismiss()
    }
}

struct ServiceProgressView: View {
    let vehicle: Vehicle
    let services: [ServiceRecord]
    @EnvironmentObject var localization: LocalizationManager
    
    func getNextServiceInfo(for type: ServiceType) -> (kmUntil: Double, progress: Double, lastService: ServiceRecord?) {
        let lastService = services.filter { $0.serviceType == type }.sorted { $0.date > $1.date }.first
        let interval = type.interval()
        
        if let last = lastService {
            let kmSinceService = vehicle.currentKilometers - last.kilometers
            let kmUntil = interval - kmSinceService
            let progress = min(kmSinceService / interval, 1.0)
            return (kmUntil, progress, last)
        } else {
            let progress = vehicle.currentKilometers / interval
            let kmUntil = interval - vehicle.currentKilometers.truncatingRemainder(dividingBy: interval)
            return (kmUntil, progress, nil)
        }
    }
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(ServiceType.allCases.filter { $0.isMainService() }, id: \.self) { serviceType in
                let info = getNextServiceInfo(for: serviceType)
                ServiceProgressCard(
                    serviceType: serviceType,
                    kmUntil: info.kmUntil,
                    progress: info.progress,
                    lastService: info.lastService
                )
            }
        }
    }
}

struct ServiceProgressCard: View {
    let serviceType: ServiceType
    let kmUntil: Double
    let progress: Double
    let lastService: ServiceRecord?
    @EnvironmentObject var localization: LocalizationManager
    
    var isOverdue: Bool {
        kmUntil < 0
    }
    
    var progressColor: Color {
        if isOverdue {
            return .red
        } else if progress > 0.8 {
            return .orange
        } else {
            return .green
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: serviceType == .small ? "wrench.fill" : "wrench.and.screwdriver.fill")
                    .foregroundStyle(progressColor)
                
                Text(getServiceTypeName(serviceType))
                    .font(.headline)
                
                Spacer()
                
                if isOverdue {
                    Text(localization.translate("overdue"))
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.red, in: Capsule())
                } else {
                    Text(String(format: "%.0f %@", abs(kmUntil), localization.translate("km_until_service")))
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(.systemGray5))
                        .frame(height: 12)
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(progressColor)
                        .frame(width: geometry.size.width * min(progress, 1.0), height: 12)
                }
            }
            .frame(height: 12)
            
            if let last = lastService {
                HStack {
                    Text("\(last.location)")
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text(last.date, style: .date)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
}

struct ServiceRecordRow: View {
    let service: ServiceRecord
    @EnvironmentObject var localization: LocalizationManager
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: service.serviceType == .small ? "wrench.fill" : "wrench.and.screwdriver.fill")
                    .foregroundStyle(service.serviceType == .small ? .green : .orange)
                
                Text(getServiceTypeName(service.serviceType))
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text(service.date, style: .date)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            HStack(spacing: 16) {
                Label(String(format: "%.0f km", service.kilometers), systemImage: "road.lanes")
                    .font(.caption)
                Label(service.location, systemImage: "mappin.circle.fill")
                    .font(.caption)
                Label(String(format: "%.0f RSD", service.cost), systemImage: "banknote")
                    .font(.caption)
            }
            .foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 8))
    }
}

struct AddServiceView: View {
    let vehicle: Vehicle
    @Binding var serviceRecords: [ServiceRecord]
    @Binding var currentKm: Double
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var localization: LocalizationManager
    
    @State private var serviceType: ServiceType = .small
    @State private var date = Date()
    @State private var kilometers = ""
    @State private var cost = ""
    @State private var location = ""
    @State private var notes = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("service_type"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Picker(localization.translate("service_type"), selection: $serviceType) {
                            ForEach(ServiceType.allCases, id: \.self) { type in
                                Text(getServiceTypeName(type)).tag(type)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("service_date"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        DatePicker("", selection: $date, displayedComponents: [.date, .hourAndMinute])
                            .datePickerStyle(.compact)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("service_kilometers"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 50000", text: $kilometers)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("service_location"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. Auto servis Centar", text: $location)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("service_cost"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 15000", text: $cost)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Napomene (opciono)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. Zamena ulja i filtera", text: $notes)
                            .textFieldStyle(.roundedBorder)
                    }
                }
                .padding()
            }
            .navigationTitle(localization.translate("add_service"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(localization.translate("cancel")) {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button(localization.translate("add")) {
                        saveService()
                    }
                    .disabled(!isValid)
                }
            }
        }
    }
    
    var isValid: Bool {
        Double(kilometers) != nil &&
        Double(cost) != nil &&
        !location.isEmpty
    }
    
    func saveService() {
        let service = ServiceRecord(
            vehicleId: vehicle.id,
            serviceType: serviceType,
            date: date,
            kilometers: Double(kilometers) ?? 0,
            cost: Double(cost) ?? 0,
            location: location,
            notes: notes.isEmpty ? nil : notes
        )
        serviceRecords.append(service)
        
        if let km = Double(kilometers), km > currentKm {
            currentKm = km
        }
        
        dismiss()
    }
    
    func getServiceTypeName(_ type: ServiceType) -> String {
        switch type {
        case .small: return localization.translate("small_service")
        case .big: return localization.translate("big_service")
        case .brakes: return localization.translate("brakes")
        case .tires: return localization.translate("tires")
        case .battery: return localization.translate("battery")
        case .airFilter: return localization.translate("airFilter")
        case .fuelFilter: return localization.translate("fuelFilter")
        case .sparkPlugs: return localization.translate("sparkPlugs")
        case .transmission: return localization.translate("transmission")
        case .cooling: return localization.translate("cooling")
        case .suspension: return localization.translate("suspension")
        case .other: return localization.translate("other")
        }
    }
}

struct UpdateKilometersView: View {
    @Binding var currentKilometers: Double
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var localization: LocalizationManager
    @State private var kilometersText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("current_km"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        
                        Text("Trenutno: \(String(format: "%.0f km", currentKilometers))")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        
                        TextField("npr. 55000", text: $kilometersText)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                            .font(.title2)
                    }
                    
                    Text("Ažurirajte trenutnu kilometražu vozila kako biste tačno pratili stanje servisnih intervala.")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            .navigationTitle(localization.translate("update_km"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(localization.translate("cancel")) {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button(localization.translate("done")) {
                        if let km = Double(kilometersText) {
                            currentKilometers = km
                        }
                        dismiss()
                    }
                    .disabled(Double(kilometersText) == nil)
                }
            }
            .onAppear {
                kilometersText = String(format: "%.0f", currentKilometers)
            }
        }
    }
}

func getServiceTypeName(_ type: ServiceType) -> String {
    switch type {
    case .small: return "Mali servis"
    case .big: return "Veliki servis"
    case .brakes: return "Kočnice"
    case .tires: return "Gume"
    case .battery: return "Akumulator"
    case .airFilter: return "Vazdušni filter"
    case .fuelFilter: return "Filter goriva"
    case .sparkPlugs: return "Svećice"
    case .transmission: return "Transmisija"
    case .cooling: return "Hlađenje"
    case .suspension: return "Oslanjanje"
    case .other: return "Ostalo"
    }
}

struct EditVehicleView: View {
    @Binding var vehicle: Vehicle
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var localization: LocalizationManager
    
    @State private var brand = ""
    @State private var model = ""
    @State private var year = 2024
    @State private var engineType: EngineType = .gasoline
    @State private var horsePower = ""
    @State private var engineCapacity = ""
    @State private var officialConsumption = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("brand"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. Audi", text: $brand)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("model"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. A4", text: $model)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("year"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Picker("Godina", selection: $year) {
                            ForEach((1990...Calendar.current.component(.year, from: Date())).reversed(), id: \.self) { year in
                                Text("\(year)").tag(year)
                            }
                        }
                        .pickerStyle(.wheel)
                        .frame(height: 120)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("engine_type"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Picker("Tip motora", selection: $engineType) {
                            ForEach(EngineType.allCases, id: \.self) { type in
                                Text(localization.translate(type.rawValue)).tag(type)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("horsepower"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 150", text: $horsePower)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.numberPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("engine_capacity"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 2000", text: $engineCapacity)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(localization.translate("official_consumption"))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        TextField("npr. 6.5", text: $officialConsumption)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.decimalPad)
                    }
                }
                .padding()
            }
            .navigationTitle(localization.translate("edit_vehicle"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(localization.translate("cancel")) {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button(localization.translate("done")) {
                        saveVehicle()
                    }
                    .disabled(!isValid)
                }
            }
            .onAppear {
                brand = vehicle.brand
                model = vehicle.model
                year = vehicle.year
                engineType = vehicle.engineType
                horsePower = "\(vehicle.horsePower)"
                engineCapacity = "\(vehicle.engineCapacity)"
                officialConsumption = "\(vehicle.officialConsumption)"
            }
        }
    }
    
    var isValid: Bool {
        !brand.isEmpty &&
        !model.isEmpty &&
        Int(horsePower) != nil &&
        Double(engineCapacity) != nil &&
        Double(officialConsumption) != nil
    }
    
    func saveVehicle() {
        vehicle.brand = brand
        vehicle.model = model
        vehicle.year = year
        vehicle.engineType = engineType
        vehicle.horsePower = Int(horsePower) ?? 0
        vehicle.engineCapacity = Double(engineCapacity) ?? 0
        vehicle.officialConsumption = Double(officialConsumption) ?? 0
        dismiss()
    }
}

struct ServiceBookView: View {
    let vehicles: [Vehicle]
    let serviceRecords: [ServiceRecord]
    @EnvironmentObject var localization: LocalizationManager
    @State private var selectedVehicle: Vehicle?
    
    var filteredRecords: [ServiceRecord] {
        if let selected = selectedVehicle {
            return serviceRecords.filter { $0.vehicleId == selected.id }.sorted { $0.date > $1.date }
        }
        return serviceRecords.sorted { $0.date > $1.date }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    if !vehicles.isEmpty {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                FilterChip(title: "All", isSelected: selectedVehicle == nil) {
                                    selectedVehicle = nil
                                }
                                
                                ForEach(vehicles) { vehicle in
                                    FilterChip(title: "\(vehicle.brand) \(vehicle.model)", isSelected: selectedVehicle?.id == vehicle.id) {
                                        selectedVehicle = vehicle
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    if filteredRecords.isEmpty {
                        VStack(spacing: 12) {
                            Image(systemName: "wrench.and.screwdriver")
                                .font(.system(size: 50))
                                .foregroundStyle(.gray)
                            Text(localization.translate("no_services"))
                                .font(.headline)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.top, 60)
                    } else {
                        ForEach(filteredRecords) { record in
                            if let vehicle = vehicles.first(where: { $0.id == record.vehicleId }) {
                                ServiceBookCard(record: record, vehicle: vehicle)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle(localization.translate("service_book"))
        }
    }
}

struct ServiceBookCard: View {
    let record: ServiceRecord
    let vehicle: Vehicle
    @EnvironmentObject var localization: LocalizationManager
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(vehicle.brand) \(vehicle.model)")
                        .font(.headline)
                    Text(record.date, style: .date)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 4) {
                    Image(systemName: getServiceIcon(record.serviceType))
                        .font(.title2)
                        .foregroundStyle(getServiceColor(record.serviceType))
                    Text(record.date, style: .time)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            
            Divider()
            
            HStack {
                Label(getServiceTypeName(record.serviceType), systemImage: "wrench.fill")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            HStack(spacing: 16) {
                Label(String(format: "%.0f km", record.kilometers), systemImage: "road.lanes")
                    .font(.caption)
                Label(record.location, systemImage: "mappin.circle.fill")
                    .font(.caption)
            }
            .foregroundStyle(.secondary)
            
            HStack {
                Text(String(format: "%.0f RSD", record.cost))
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                Spacer()
            }
            
            if let notes = record.notes {
                Text(notes)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.top, 4)
            }
        }
        .padding()
        .background(Color(.systemGray6), in: RoundedRectangle(cornerRadius: 12))
    }
    
    func getServiceTypeName(_ type: ServiceType) -> String {
        switch type {
        case .small: return localization.translate("small_service")
        case .big: return localization.translate("big_service")
        case .brakes: return localization.translate("brakes")
        case .tires: return localization.translate("tires")
        case .battery: return localization.translate("battery")
        case .airFilter: return localization.translate("airFilter")
        case .fuelFilter: return localization.translate("fuelFilter")
        case .sparkPlugs: return localization.translate("sparkPlugs")
        case .transmission: return localization.translate("transmission")
        case .cooling: return localization.translate("cooling")
        case .suspension: return localization.translate("suspension")
        case .other: return localization.translate("other")
        }
    }
    
    func getServiceIcon(_ type: ServiceType) -> String {
        switch type {
        case .small: return "wrench.fill"
        case .big: return "wrench.and.screwdriver.fill"
        case .brakes: return "brake.signal"
        case .tires: return "circle.circle"
        case .battery: return "battery.100"
        case .airFilter: return "wind"
        case .fuelFilter: return "drop.fill"
        case .sparkPlugs: return "bolt.fill"
        case .transmission: return "gearshape.2.fill"
        case .cooling: return "snowflake"
        case .suspension: return "arrow.up.and.down"
        case .other: return "wrench.adjustable.fill"
        }
    }
    
    func getServiceColor(_ type: ServiceType) -> Color {
        switch type {
        case .small: return .green
        case .big: return .orange
        case .brakes: return .red
        case .tires: return .brown
        case .battery: return .yellow
        default: return .blue
        }
    }
}

struct VehicleServiceBookView: View {
    let vehicle: Vehicle
    @Binding var serviceRecords: [ServiceRecord]
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var localization: LocalizationManager
    
    var vehicleServices: [ServiceRecord] {
        serviceRecords.filter { $0.vehicleId == vehicle.id }.sorted { $0.date > $1.date }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    if vehicleServices.isEmpty {
                        VStack(spacing: 12) {
                            Image(systemName: "wrench.and.screwdriver")
                                .font(.system(size: 50))
                                .foregroundStyle(.gray)
                            Text(localization.translate("no_services"))
                                .font(.headline)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.top, 60)
                    } else {
                        ForEach(vehicleServices) { record in
                            ServiceBookCard(record: record, vehicle: vehicle)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(localization.translate("service_book"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button(localization.translate("done")) {
                        dismiss()
                    }
                }
            }
        }
    }
}
