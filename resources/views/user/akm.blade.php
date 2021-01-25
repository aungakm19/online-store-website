<form method="post" enctype="multipart/form-data">
@csrf	
Name: <input type="text" name="name"><br>
Spec: <input type="text" name="spec"><br>
Price: <input type="text" name="price"><br>
Cover: <input type="file" name="cover"><br>
cat id: <input type="text" name="cat_id"><br>
<input type="submit" name="submit">
</form>
