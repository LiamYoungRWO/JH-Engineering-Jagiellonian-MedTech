// === Users ===
interface User {
    userID: number;
    firstName: string;
    lastName: string;
    email: string;
    password: string;  // Note: Ideally, password operations should be abstracted and never directly managed
    dob: Date;
    medicalHistoryID: number;
    createdAt: Date;
    lastLogin: Date;
}

// === MedicalSupplies ===
interface MedicalSupply {
    supplyID: number;
    name: string;
    description: string;
    price: number;
    stockQuantity: number;
    imageURL: string;
    isActive: boolean;
}

// === Categories ===
interface Category {
    categoryID: number;
    name: string;
}

// === SupplyCategories ===
interface SupplyCategory {
    supplyCategoryID: number;
    supplyID: number;
    categoryID: number;
}

// === Orders ===
interface Order {
    orderID: number;
    userID: number;
    totalPrice: number;
    orderDate: Date;
    status: string;  // Enum can be used for predefined statuses
}

// === OrderItems ===
interface OrderItem {
    orderItemID: number;
    orderID: number;
    supplyID: number;
    quantity: number;
    subTotal: number;
}

// === Addresses ===
interface Address {
    addressID: number;
    userID: number;
    streetAddress: string;
    city: string;
    state: string;
    postalCode: string;
    country: string;
}

// === MedicalProfessionals ===
interface MedicalProfessional {
    professionalID: number;
    firstName: string;
    lastName: string;
    licenseNumber: string;
    specialty: string;
    isActive: boolean;
    contactInfo: string;
}

// === Appointments ===
interface Appointment {
    appointmentID: number;
    userID: number;
    professionalID: number;
    appointmentTime: Date;
    notes: string;
    status: string;  // Enum can be used for predefined statuses
}

// === MedicalHistory ===
interface MedicalHistory {
    medicalHistoryID: number;
    allergies: string[];
    pastSurgeries: string[];
    currentMedications: string[];
    chronicConditions: string[];
}

// === Reviews ===
interface Review {
    reviewID: number;
    supplyID?: number;  // Nullable
    professionalID?: number;  // Nullable
    userID: number;
    rating: number;
    comment: string;
    reviewDate: Date;
}

// === Cart ===
interface Cart {
    cartID: number;
    userID: number;
}

// === CartItems ===
interface CartItem {
    cartItemID: number;
    cartID: number;
    supplyID: number;
    quantity: number;
}
