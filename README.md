# Workforce WebApp

Webapp quản lý, phân công, theo dõi, giám sát và đánh giá công việc nhân viên.

## Phiên bản hiện tại
Bản đầy đủ hơn (production-ready MVP) gồm:
- Đăng nhập / phân quyền
- Quản lý nhân viên
- Quản lý công việc
- Phân công và theo dõi tiến độ
- KPI cá nhân và phòng ban
- Nhật ký hoạt động
- Upload file minh chứng cho công việc
- Nhắc việc / thông báo nội bộ
- Xuất báo cáo Excel

## Tài khoản mẫu
- Admin: `admin` / `123456`
- Manager: `manager` / `123456`
- Staff: `staff` / `123456`

## Chạy local
### 1. Cài dependencies
```bash
npm install
npm --prefix server install
npm --prefix client install
```

### 2. Chạy development
```bash
npm run dev
```
- Frontend: http://localhost:5173
- Backend: http://localhost:4000

### 3. Chạy production ổn định
```bash
npm run build
npm start
```
Sau đó chỉ cần mở:
- http://localhost:4000

Backend sẽ phục vụ luôn frontend build, không cần chạy Vite riêng.

### 4. Chạy 1 chạm trên Windows
Chỉ cần bấm đúp các file tại thư mục `workforce-webapp`:
- `start-workforce.bat` → khởi động app và tự mở trình duyệt
- `stop-workforce.bat` → dừng app
- `restart-workforce.bat` → khởi động lại app

Log chạy app nằm tại:
- `logs/server.out.log`
- `logs/server.err.log`

## Dữ liệu
- Database: PostgreSQL qua biến môi trường `DATABASE_URL`
- Upload file: `server/uploads`
- Seed mẫu được tạo tự động khi server khởi động lần đầu.

### Biến môi trường mẫu
```env
DATABASE_URL=postgresql://postgres:postgres@localhost:5432/workforce_webapp
PGSSLMODE=disable
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your-email@gmail.com
SMTP_PASS=your-app-password
SMTP_SECURE=false
SMTP_FROM=your-email@gmail.com
```

### Ghi chú triển khai
- Tạo sẵn database PostgreSQL trước khi chạy app.
- Khi deploy lên domain/VPS, chỉ cần trỏ `DATABASE_URL` tới PostgreSQL managed service hoặc PostgreSQL trên máy chủ.
- Phần công việc của nhân viên đã hỗ trợ gửi **ghi chú cho người phụ trách**; ghi chú sẽ được lưu lịch sử, hiển thị trong chi tiết công việc và gửi thông báo/email cho người phụ trách nếu có email.
