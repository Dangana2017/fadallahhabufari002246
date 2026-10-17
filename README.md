# Fadallah Habufari Foundation Web Platform & Administration Portal

A premium, modern, responsive, secure, and fully database-connected website and programme management system built for **Fadallah Habufari Foundation**. The platform empowers young people, supports education through tertiary scholarships, provides grants for young entrepreneurs, delivers digital skills training, and fosters grassroots sports development through football.

---

## Key Features

### 1. Dynamic Programme & Form Builder System
- **Zero-Code Programme Lifecycle Management**: Administrators can create, edit, publish, unpublish, open, close, archive, and soft-delete programmes directly from the admin dashboard without modifying any source code.
- **Interactive Form Builder**: Add text fields, textareas, dropdown menus, radio buttons, consent checkboxes, number inputs, date pickers, email, phone number, and file/document upload inputs. Reorder fields using drag-and-drop or rank controls.
- **Independent ON/OFF Registration Controls**: Turn registration ON/OFF per programme independently. Set registration opening dates, application deadlines, maximum capacity limits, and custom closed messages.
- **Server-Side Validation**: Server validates registration status, capacity limits, deadlines, and age eligibility rules. Prevents direct API bypass when registration is closed.

### 2. Grants Management & Customizable Eligibility
- **Custom Eligibility Rules**: Configurable gender limits, age limits (default under 45 years old unless specified per grant), location requirements, and mandatory document attachments (CAC/Utility Bill, Business Proposal PDF, Identity Card).
- **Automated Validation**: Calculates applicant age from date of birth before accepting submission.

### 3. Scholarships Management
- **Undergraduate Scholarship**: Tailored application fields including Institution Name, Course of Study, Level of Study, Matriculation Number, CGPA/Academic Grade, Motivation Statement, and Transcript/Admission uploads.
- **Postgraduate Scholarship**: Tailored fields for Master's and Ph.D. candidates including Research Topic/Study Proposal Summary, Qualification Pursued, and Degree Certificates.

### 4. Football Programme & Grassroots Championship
- **Football Events & Tournament Management**: Create and manage football cups, clinics, and grassroots leagues.
- **Fixtures, Results & Scores**: Schedule matches, record scores, publish match reports, and display team profiles.
- **Player & Team Registration**: Dedicated registration forms capturing player names, DOB, playing positions, team names, emergency contacts, and guardian consent for minors.

### 5. Application Review & Selection Workflow
- **Unique Reference Number**: Generates unique reference code (e.g., `FHF-2026-8942`) upon submission.
- **Public Status Tracker**: Applicants can enter their reference number at `/apply/status/check` to track review progress.
- **Reviewer Workflow**: Filter applications by programme, category, status (Pending, Under Review, Shortlisted, Approved, Rejected), gender, and age. Add reviewer comments, assign review staff, and track decision history.

### 6. Excel and PDF Export System
- **Excel (.xlsx) & CSV Export**: Export filtered or selected database records into formatted spreadsheets preserving leading zeros in phone numbers and rendering dynamic form responses as custom columns.
- **PDF Export**: Generate branded PDF application registers with foundation header, page numbers, generation timestamps, and individual applicant detail summary reports.

### 7. Security & Audit Trail
- **Session-Based Authentication**: Secure JWT cookies for admin login/logout using bcrypt password hashing.
- **Audit Logging**: Every administrative action (status updates, registration toggles, exports, logins) is recorded in the `AuditLog` database table.

---

## Quick Start & Installation

### Prerequisites
- Node.js v18+ or v20+ or v24+
- npm v9+

### Setup Instructions

1. **Install Dependencies**
   ```bash
   npm install
   ```

2. **Initialize SQLite Database & Run Schema Push**
   ```bash
   npx prisma db push
   ```

3. **Seed Database with Default Admin & Initial Programmes**
   ```bash
   npm run db:seed
   ```

4. **Start Development Server**
   ```bash
   npm run dev
   ```

   Access the public website at `http://localhost:3000` and the Admin Portal at `http://localhost:3000/admin/login`.

---

## Default Administrator Credentials

- **Email**: `admin@fadallahfoundation.org`
- **Password**: `Admin@123456`

---

## Mandatory Acceptance Test Runner

To execute the automated acceptance test suite verifying all 20 required workflows (form builder, registration ON/OFF blocking, grant eligibility, application submission, reference code generation, status updates, and audit logging):

```bash
npm run test
```

---

## Technology Stack

- **Framework**: Next.js 14 (App Router) with TypeScript
- **Styling**: Tailwind CSS & Lucide Icons
- **Database**: SQLite with Prisma ORM
- **Authentication**: Session JWT cookies & bcryptjs
- **Exports**: `xlsx` for Excel/CSV generation and `jspdf` / `jspdf-autotable` for PDF generation
