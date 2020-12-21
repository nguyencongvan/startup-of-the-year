<div class="jcause-slider">
    <ul class="bxslider" style="width: 100%;clear: both;/* overflow: hidden; *//* min-height: 99px; */">
        <?php 
            $img = $row['img'];
            $mang = explode('#', $img);
            foreach ($mang as $value) :?>
                <li>
                    <img src="public/images/products/<?php echo $value; ?>">
                </li>
        <?php endforeach; ?>
    </ul>
    <!-- <div id="bx-pager">
        <?php 
            $img = $row['img'];
            $mang = explode('#', $img);
            $i=0;
            foreach ($mang as $value) :?>
                <a data-slide-index="<?php echo $i; ?>" href=""><img src="public/images/products/<?php echo $value; ?>"></a>
                <?php $i+=1; ?>
        <?php endforeach; ?>
    </div> -->
</div>