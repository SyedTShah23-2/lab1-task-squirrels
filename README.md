# 🐿️ Task Squirrels – Unit 1 Lab

## 📌 Overview
**Task Squirrels** is an iOS app that desperate parents can use to motivate their kids to do chores and help out. The app manages a list of tasks, allows users to attach photos as proof of completion, and displays where those photos were taken on a map.  

This project demonstrates **photo library integration, metadata handling, and MapKit annotations** in iOS development.

---

## 🎯 Goals
By the end of this lab, you will be able to:
- Use **PHPickerViewController** to select photos and retrieve metadata.  
- Work with **PHAsset** to access location information from images.  
- Display photos and locations using **MapKit** with custom annotations.  
- Manage tasks using a custom data model and pass data between view controllers.  

---

## ✨ Features

### ✅ Required Features
- **Task List**: View a list of tasks with completion indicators.  
- **Task Detail**: View task details (title, description, completion status).  
- **Attach Photo**: Add a photo to mark a task as complete.  
- **Map Integration**: Show the photo’s location on a map with a pin.  
- **Custom Annotation**: Replace the default pin with a custom annotation view that displays the task image.  
- **View Photo**: Open a full-screen view of the attached photo.  

### 🛠️ Data Model
Each `Task` contains:
- `title` (String)  
- `description` (String)  
- `image` (UIImage?)  
- `isComplete` (Bool, computed → true if `image != nil`)  
- `imageLocation` (CLLocation?, metadata from photo)  

---

## 🧪 Lab Instructions (Implementation Steps)
1. **Setup the Project**  
   - Run the starter project (`lab_1.zip`).  
   - Explore the `TaskListViewController`, `TaskDetailViewController`, and `Task` model.  

2. **Photo Library Access**  
   - Import `PhotosUI`.  
   - Request authorization with `PHPhotoLibrary.authorizationStatus`.  
   - Add `NSPhotoLibraryUsageDescription` to `Info.plist`.  

3. **Image Picker**  
   - Configure and present `PHPickerViewController`.  
   - Conform to `PHPickerViewControllerDelegate`.  

4. **Get Metadata & Image**  
   - Use `PHAsset` to extract **location coordinates**.  
   - Load the selected image as a `UIImage`.  
   - Update task data and UI.  

5. **MapKit Integration**  
   - Use `MKMapView` to show photo location.  
   - Zoom into the photo’s coordinates.  
   - Drop a **custom annotation** with the photo thumbnail.  

6. **Custom Annotation View**  
   - Create `TaskAnnotationView` subclass of `MKAnnotationView`.  
   - Configure it to display the photo instead of the default pin.  

7. **View Photo in Detail**  
   - Add a “View Photo” button to `TaskDetailViewController`.  
   - Segue into a new `PhotoViewController` to display the image.  

---

## 📲 Running the App
1. Clone or download the project.  
2. Open in **Xcode (15 or later recommended)**.  
3. Run on a **physical iOS device** (preferred for metadata access).  
4. Create a new task, attach a photo, and view its location on the map.  

---

## 📸 Screenshots
*(Add screenshots of Task List, Attach Photo, Map, and Photo View here)*  

---

## 🚀 Future Improvements
- Add **task deadlines & reminders**.  
- Implement **cloud storage** for syncing tasks.  
- Allow **multiple photos per task**.  
- Add **filters/search** in task list.  

---

## 👨‍💻 Author
**Your Name**  
Unit 1 – Mobile Development Lab  
[Your Email / GitHub / LinkedIn]  

---
