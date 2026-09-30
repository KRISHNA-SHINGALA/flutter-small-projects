import 'package:flutter/material.dart';
import 'package:flutter_application/controls/dropdown.dart';
import 'package:flutter_application/controls/radiobutton.dart';
import 'package:flutter_application/controls/sliderexample.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  // Form Key
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // Controllers
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _rePasswordController = TextEditingController();
  TextEditingController _dobController = TextEditingController();

  // Gender
  String gender = "Male";

  // Qualification
  bool tenth = false;
  bool twelfth = false;
  bool graduate = false;

  // City
  String? city;

  // Height
  double height = 48;

  // Date of Birth
  DateTime? dob;

  // Submit Form
  void _submitform() {
    if (_formkey.currentState!.validate()) {

      // Qualification validation
      if (!tenth && !twelfth && !graduate) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Please select at least one qualification"),
          ),
        );
        return;
      }

      // Navigate to next screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DisplayData(
            name: _nameController.text,
            email: _emailController.text,
            gender: gender,
            qualification: _getQualification(),
            city: city!,
            height: height,
            dob: _dobController.text,
          ),
        ),
      );
    }
  }

  // Get selected qualification
  String _getQualification() {
    List<String> qualifications = [];

    if (tenth) {
      qualifications.add("10th");
    }

    if (twelfth) {
      qualifications.add("12th");
    }

    if (graduate) {
      qualifications.add("Graduate");
    }

    return qualifications.join(", ");
  }

  // Date Picker
  void _selectDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        dob = selectedDate;

        _dobController.text =
            "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    _dobController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: Form(
          key: _formkey,

          child: SingleChildScrollView(
            child: Column(
              children: [

                // ---------------- USER NAME ----------------

                TextFormField(
                  controller: _nameController,

                  decoration: const InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter user name";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 10),

                // ---------------- EMAIL ----------------

                TextFormField(
                  controller: _emailController,

                  keyboardType: TextInputType.emailAddress,

                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter email";
                    }

                    if (!value.contains("@")) {
                      return "Please enter valid email";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 10),

                // ---------------- PASSWORD ----------------

                TextFormField(
                  controller: _passwordController,

                  obscureText: true,

                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    }

                    // 1 capital
                    if (!RegExp(r'[A-Z]').hasMatch(value)) {
                      return "Password must contain 1 capital letter";
                    }

                    // 1 small
                    if (!RegExp(r'[a-z]').hasMatch(value)) {
                      return "Password must contain 1 small letter";
                    }

                    // 2 numbers
                    if (!RegExp(r'(.*\d){2}').hasMatch(value)) {
                      return "Password must contain 2 numbers";
                    }

                    // 2 special characters
                    if (!RegExp(
                      r'(.*[!@#$%^&*(),.?":{}|<>_\-]){2}',
                    ).hasMatch(value)) {
                      return "Password must contain 2 special characters";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 10),

                // ---------------- RE-ENTER PASSWORD ----------------

                TextFormField(
                  controller: _rePasswordController,

                  obscureText: true,

                  decoration: const InputDecoration(
                    labelText: "Re-enter Password",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please re-enter password";
                    }

                    if (value != _passwordController.text) {
                      return "Password does not match";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 10),

                // ---------------- GENDER ----------------
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const RadioExample(),

                // ---------------- QUALIFICATION ----------------

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Qualification",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                CheckboxListTile(
                  title: const Text("10th"),
                  value: tenth,

                  onChanged: (value) {
                    setState(() {
                      tenth = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  title: const Text("12th"),
                  value: twelfth,

                  onChanged: (value) {
                    setState(() {
                      twelfth = value!;
                    });
                  },
                ),

                CheckboxListTile(
                  title: const Text("Graduate"),
                  value: graduate,

                  onChanged: (value) {
                    setState(() {
                      graduate = value!;
                    });
                  },
                ),

                const SizedBox(height: 10),

                // ---------------- CITY ----------------

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "City",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const DropDownExample(),

                const SizedBox(height: 10),

                // ---------------- HEIGHT ----------------

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Height",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SliderExample(),

                // ---------------- DATE OF BIRTH ----------------

                TextFormField(
                  controller: _dobController,

                  readOnly: true,

                  decoration: InputDecoration(
                    labelText: "Date of Birth",
                    border: const OutlineInputBorder(),

                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: _selectDate,
                    ),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please select date of birth";
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // ---------------- SUBMIT BUTTON ----------------

                ElevatedButton(
                  onPressed: _submitform,

                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// ==========================================================
// NEXT SCREEN
// ==========================================================

class DisplayData extends StatelessWidget {
  final String name;
  final String email;
  final String gender;
  final String qualification;
  final String city;
  final double height;
  final String dob;

  const DisplayData({
    super.key,

    required this.name,
    required this.email,
    required this.gender,
    required this.qualification,
    required this.city,
    required this.height,
    required this.dob,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Details"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "User Name: $name",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "Email: $email",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "Gender: $gender",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "Qualification: $qualification",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "City: $city",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "Height: ${height.round()} inch",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            Text(
              "Date of Birth: $dob",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}