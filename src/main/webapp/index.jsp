<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Danh sách khách hàng</title>
        <style>
            body { font-family: Arial, sans-serif; display: flex; justify-content: center; margin-top: 50px; background-color: #f8fafc; }
            .container { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 4px 10px rgba(0,0,0,0.1); width: 650px; }
            h2 { text-align: center; color: #333; margin-bottom: 25px; }
            table { width: 100%; border-collapse: collapse; text-align: left; }
            th, td { padding: 12px 15px; border-bottom: 1px solid #e2e8f0; }
            th { background-color: #f1f5f9; color: #1e293b; font-weight: bold; }
            tr:hover { background-color: #f8fafc; }
            img { width: 50px; height: 50px; border-radius: 50%; object-fit: cover; }
        </style>
    </head>
    <body>
        <div class="container">
            <h2>Danh sách khách hàng</h2>
            <table>
                <thead>
                    <tr>
                        <th>Tên</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
                        <th>Ảnh</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Sử dụng JSTL c:forEach để lặp qua danh sách khách hàng -->
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td>${customer.name}</td>
                            <td>${customer.birthDate}</td>
                            <td>${customer.address}</td>
                            <td><img src="${customer.image}" alt="Avatar"></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>