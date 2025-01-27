<div class="col-md-5 col-lg-3 formbox processing d-none page_column" column="third">
    <div class="head">
        <span class="title"></span>
    </div>
    <div class="fields">
        <div>
            <div class="error"></div>
            <form method='post' autocomplete="off" class='dataform' spellcheck="false">
                <div class="formdata"></div>
            </form>

        </div>
    </div>
    <div class="bottom">
        <span class="cancel"><?php echo(Registry::load('strings')->cancel) ?></span>
        <span class="submit"></span>
    </div>
    <div class="form_audio_preview d-none">
        <div></div>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var fields = document.querySelectorAll('.formdata .field');
        console.log("Number of fields found: ", fields.length);
        fields.forEach(function(field, index) {
            field.id = 'field-' + (index + 1);
            console.log("Assigned ID: ", field.id);
        });
    });
    </script>