# IGListKit_AdmicroAdsSDK

Thư viện wrapper giúp tích hợp đồng thời **AdmicroAdsSDK** cùng với **IGListKit** và **IGListDiffKit** vào dự án iOS một cách nhanh chóng và tránh các lỗi xung đột liên kết dynamic/static.

---

## 🛠️ Hướng Dẫn Tích Hợp

Bạn có thể tích hợp thư viện vào dự án iOS bằng **Swift Package Manager (SPM)** hoặc **CocoaPods**.

### 1. Tích hợp qua Swift Package Manager (SPM) - Khuyên dùng
Từ phiên bản **`1.1.13`** trở lên, thư viện được đóng gói dưới dạng **Static Library** giúp sửa triệt để lỗi crash runtime do thiếu liên kết framework động (`Library not loaded`).

#### Cách A: Sử dụng giao diện Xcode
1. Mở dự án Xcode của bạn.
2. Chọn **File** -> **Add Packages...** (hoặc đi tới cài đặt dự án -> tab **Package Dependencies** -> nhấn nút **+**).
3. Nhập URL của repository vào ô tìm kiếm:
   ```text
   https://github.com/CanThaiLinh/IGListKit_AdmicroAdsSDK.git
   ```
4. Tại mục **Dependency Rule**, chọn **Exact Version** và nhập: `1.1.13` (hoặc chọn **Up to Next Major Version** từ `1.1.13`).
5. Chọn target ứng dụng của bạn và nhấn **Add Package**.

#### Cách B: Sử dụng file `Package.swift` (Dành cho Package khác)
Thêm dependency vào danh sách của bạn:
```swift
dependencies: [
    .package(url: "https://github.com/CanThaiLinh/IGListKit_AdmicroAdsSDK.git", from: "1.1.13")
]
```
Và liên kết thư viện vào target mong muốn:
```swift
targets: [
    .target(
        name: "MyTarget",
        dependencies: [
            .product(name: "IGListKit_AdmicroAdsSDK", package: "IGListKit_AdmicroAdsSDK")
        ]
    )
]
```

---

### 2. Tích hợp qua CocoaPods
CocoaPods được hỗ trợ cho các phiên bản từ **`1.1.12` trở xuống** (sử dụng thư viện liên kết động Dynamic Library).

Thêm dòng sau vào `Podfile` của dự án:
```ruby
pod 'IGListKit_AdmicroAdsSDK', '~> 1.1.12'
```

Sau đó chạy lệnh cài đặt trong thư mục dự án:
```bash
pod install
```

> ⚠️ **Cảnh báo:** Phiên bản CocoaPods chỉ hỗ trợ đến `1.1.12`. Đối với phiên bản `1.1.13` trở đi, vui lòng chuyển hẳn sang sử dụng **Swift Package Manager (SPM)** để đảm bảo dự án chạy ổn định và không bị crash runtime.