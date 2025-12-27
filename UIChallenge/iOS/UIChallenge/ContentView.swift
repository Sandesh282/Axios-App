import SwiftUI

struct ContentView: View {
    var body: some View {
        ProfileSetupView()
    }
}

struct ProfileSetupView: View {

    @State private var name: String = ""
    @State private var age: String = ""
    @State private var isVerified: Bool = false
    @State private var showDetails: Bool = false

    var greetingText: String {
        if name.isEmpty {
            return "Welcome!!"
        } else {
            return "Welcome, \(name)"
        }
    }

    var ageValue: Int? {
        Int(age)
    }

    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {

                VStack(spacing: 8) {
                    Text(greetingText)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)

                    Text("Complete your profile to continue")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
                .padding(.top, 20)

                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 120, height: 120)

                    Image(systemName: "person.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.gray)
                }

                VStack(alignment: .leading, spacing: 16) {

                    Text("Name")
                        .font(.headline)

                    TextField("Enter your name", text: $name)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)

                    Text("Age")
                        .font(.headline)

                    TextField("Enter your age", text: $age)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                }

                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Verification Status")
                            .font(.headline)

                        if isVerified {
                            Text("Verified user")
                                .foregroundColor(.green)
                                .font(.subheadline)
                        } else {
                            Text("Not verified")
                                .foregroundColor(.red)
                                .font(.subheadline)
                        }
                    }

                    Spacer()

                    Button(action: toggleVerification) {
                        Text(isVerified ? "Revoke" : "Verify")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)

                Spacer()

                NavigationLink(
                    destination: ProfileDetailsView(
                        name: name,
                        age: ageValue
                    ),
                    isActive: $showDetails
                ) {
                    Button(action: {
                        showDetails = true
                    }) {
                        Text("Continue")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(14)
                    }
                }
            }
            .padding()
            .background(Color.white)
            .navigationTitle("Profile Setup")
        }
    }

    // MARK: - Functions
    private func toggleVerification() {
        isVerified.toggle()
    }
}

struct ProfileDetailsView: View {

    let name: String
    let age: Int?

    var body: some View {
        VStack(spacing: 20) {

            Text("Profile Details")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Name: \(name.isEmpty ? "N/A" : name)")
                .font(.title3)

            if let age {
                Text("Age: \(age)")
                    .font(.title3)
            } else {
                Text("Age not provided")
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Details")
    }
}


#Preview {
    ContentView()
}
