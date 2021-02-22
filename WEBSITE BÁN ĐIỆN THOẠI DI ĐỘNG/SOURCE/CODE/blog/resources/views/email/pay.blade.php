<p>Cảm ơn bạn đã đồng hành với chúng tôi. Tổng số tiền cần thanh toán là <a>{{number_format($route,0,',','.')}} VNĐ</a></p>
<table class="table">
    <thead>
    <tr>
        <th>STT</th>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>Thành tiền</th>
    </tr>
    </thead>
    <tbody>
    <?php $i=1 ?>
    @foreach($products  as $key=>$product)
        <tr>
            <td>#{{$i}}</td>
            <td>{{ $product->name }}</td>

            <td>{{number_format($product->price,0,',','.')}} VNĐ</td>
            <td>{{$product->qty}}</td>


            <td>{{number_format($product->qty * $product->price,0,',','.')}} VNĐ</td>
        </tr>
        <?php $i++ ?>
    @endforeach
    </tbody>
</table>
