<form action="" method="POST">
    @csrf
    <div class="form-group">
        <label for="name">Ten Danh Muc </label>
        <input type="text" class="form-control"  placeholder="Ten Danh Muc" value="{{ old('name',isset($category->c_name) ? $category->c_name :'' ) }}" name="name">
        @if($errors->has('name'))
            <span class="error-text">
            {{$errors->first('name')}}
        </span>
        @endif
    </div>

    <div class="form-group">
        <label for="name">Icon</label>
        <input type="text" class="form-control"  placeholder="fa fa-home" value="{{ old('icon',isset($category->c_icon) ? $category->c_icon :'') }}" name="icon">
        @if($errors->has('icon'))
            <span class="error-text">
            {{$errors->first('icon')}}
        </span>
        @endif
    </div>
    <div class="form-group">
        <label for="name">Meta title </label>
        <input type="text" class="form-control"  placeholder="Meta title" value="{{ old('c_title_seo',isset($category->c_title_seo) ? $category->c_title_seo :'') }}" name="c_title_seo">

    </div>
    <div class="form-group">
        <label for="name">Meta Descrption </label>
        <input type="text" class="form-control"  placeholder="Meta Description" value="{{ old('c_description_seo',isset($category->c_description_seo) ? $category->c_description_seo :'') }}" name="c_description_seo">

    </div>
    <div class="form-group">
        <div class="checkbox">
            <label><input type="checkbox" name ="hot"> Noi bat</label>
        </div>
    </div>
    <button type="submit" class="btn btn-success">Luu Thong Tin</button>
</form>
