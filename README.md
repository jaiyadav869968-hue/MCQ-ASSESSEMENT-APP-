# College Assessment Portal

A desktop-based college assessment application built using **pure Java** and **Java Swing**.

The project provides separate student and teacher areas. Teachers can manage MCQ questions and exam settings, while students can take a timed assessment. The application checks answers, calculates scores, and saves completed attempts locally.

## Technology

- **Language:** Java
- **GUI:** Java Swing (part of the Java standard desktop libraries)
- **Storage:** Local text-based files (`.csv` and `.properties`)
- **External libraries:** None

## Requirements

- JDK 17 or newer
- Windows, Linux, or macOS with a graphical desktop environment

Check your Java installation:

```bash
java -version
javac -version
```

## Run the project

### Windows

1. Download or clone this repository.
2. Open the project folder in a terminal.
3. Run:

```bat
run.bat
```

Or compile and run manually:

```bat
javac -d out src\Main.java
java -cp out Main
```

### Linux / macOS

From the project folder, run:

```bash
chmod +x run.sh
./run.sh
```

Or compile and run manually:

```bash
javac -d out src/Main.java
java -cp out Main
```

## Demo login details

| Role | Username | Password |
|---|---|---|
| Student | `student` | `student123` |
| Teacher | `teacher` | `teacher123` |

The default exam key is `EXAM2026`. The teacher can update the exam settings from the teacher area.

> These are demonstration credentials only. Do not use them for a real examination system.

## Main features

### Student
- Student login and dashboard
- Subject selection and exam-key entry
- Readiness confirmation before starting
- Multiple-choice questions
- Countdown timer
- Previous / next question navigation
- Automatic submission when time expires
- Automatic score calculation
- Saved attempt history

### Teacher
- Teacher login and dashboard
- Add and manage MCQ questions
- Set assessment duration and exam key
- View student results
- Review attempts with recorded warnings

### Assessment handling
- A warning can be recorded when the assessment window loses focus.
- The attempt is automatically submitted after three warnings.
- Leaving or closing an active assessment prompts submission.

## Data storage

When the application runs, it creates a folder named `college-portal-data` in the current working directory. It stores:

- `settings.properties` — exam duration and exam key
- `questions.csv` — question bank
- `results.csv` — completed assessment records

This folder is generated automatically and is excluded from Git by `.gitignore`.

## Project structure

```text
College-Assessment-Portal/
├── src/
│   └── Main.java
├── .gitignore
├── README.md
├── run.bat
└── run.sh
```

## Current limitations

- The login accounts are hard-coded demo accounts, not a production authentication system.
- Webcam, microphone, and speaker checks are readiness confirmations. The application does not access or verify live device feeds.
- Focus monitoring is basic desktop window-focus tracking. It is not tamper-proof proctoring software.
- Data is stored locally on the computer rather than in a shared online database.
- The current assessment format is MCQ-based.

## Future improvements

- Add secure user registration and password hashing.
- Move question and result storage to a database.
- Add online access for students and teachers.
- Add more question formats and detailed reports.
- Integrate properly permissioned device checks and stronger audit logging.

## Notes

This is an educational project demonstrating Java Swing, event handling, file handling, and a basic assessment workflow.
