<?php

session_start();
include 'config.php';

if(isset($_POST['register_subject']))
{
    $rid = $_POST['rid'];
    $usn = $_POST['usn'];
    
    $ip = $_SERVER['REMOTE_ADDR'];
    
    if(mysqli_num_rows(mysqli_query($conn,"SELECT * FROM `topics` WHERE `usn`='$usn'"))==0)
    {
        mysqli_query($conn,"UPDATE `topics` SET `usn`='$usn',`ip`='$ip' WHERE `id`=$rid AND `usn`=''");
        if(mysqli_num_rows(mysqli_query($conn,"SELECT * FROM `topics` WHERE `usn`='$usn' AND `id`='$rid'"))==1)
        {
            $alert="Topic Registered Successfully !";
        }
        else
        {
            $error="Topic Already Registered !";
        }
    }
    else
    {
        $error="You have already Registered once!";
    }
}

?>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Subject List | Technical Seminar Registeration</title>
    
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css">
    
</head>

<?php include 'header.php'; ?>
<div class="main-content wide-content">

<style>




.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}


.f
{
    margin-bottom: 6px;
    margin-right: 5px;
}

.b
{
    margin-left: 5px;
    margin-top: 2px;
}
.d-flex 
{
    display: flex;
    justify-content: stretch;
    flex-wrap: wrap;
    margin-left: -3px;
}


.alert {
  padding: 20px;
  background-color: green; /* Red */
  color: white;
  margin-bottom: 15px;
}

.alert-danger {
  padding: 20px;
  background-color: red; /* Red */
  color: white;
  margin-bottom: 15px;
}

/* The close button */
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

/* When moving the mouse over the close button */
.closebtn:hover {
  color: black;
}



    #quizmain {
        font-family: "Segoe UI",Arial,sans-serif;
        width: 100%;
        background-color: #fff;
        padding:15px;
    }
    
    #qtext {
        font-size: 18px;
        margin-bottom: 40px;
    }
    
    #altcontainer {
        background-color: #fff;
        font-size: 120%;
        line-height: 1.7em;
    }

    .radiocontainer {
        background-color: #f1f1f1;
        display: block;
        position: relative;
        padding: 10px 10px 10px 50px;
        margin-bottom: 1px;
        cursor: pointer;
        font-size: 18px;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        word-wrap: break-word;
    }
    
    .radiocontainer:hover {
        background-color: #ddd;
    }
    .checkedlabel {
        background-color: #ddd;
    }
    
  
    
  
    [type=checkbox], [type=radio] {
        padding: 0;
    }
    .radiocontainer input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
    }
    
    .checkmark {
        position: absolute;
        top: 15px;
        left: 15px;
        height: 19px;
        width: 19px;
        background-color: #fff;
        border-radius: 50%;
    }
    
    .radiocontainer input:checked ~ .checkmark {
        background-color: #2196F3;
    }
</style>

<script>
    setInterval('update()', 1000);
    
    function update()
    {
        console.log(2);
        var msg="";
        jQuery.ajax({
                            type: "POST",
                            url: "https://ise.mananraj.co.in/get_updated_table",
                            data: JSON.stringify({ "msg": msg}),
                            contentType: "application/json",
                            success: function (result) {
                                document.getElementById("inner_table").innerHTML=result;
                              //console.log(result);
                            },
                            error: function (result, status) {
                            }
                        });
        
        
    }
    
    
    
    /*
     setInterval(function () 
     {
          location.reload();
     },5000); */
</script>

        <div id="quizmain">
            <div id="quizcontainer">
                <?php if($alert!='')
                {?>
                    <div class="alert">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                        <?php echo $alert;?>
                    </div>
                <? }?>
                
                <?php if($error!='')
                {?>
                    <div class="alert-danger">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                        <?php echo $error;?>
                    </div>
                <? }?>
                
                <div class="row" style="margin-bottom:12px">

                    <!-- Modal -->
                    <div id="myModal" class="modal">
                    
                      <!-- Modal content -->
                      <div class="modal-content">
                        <span class="close" onclick="close_modal()">&times;</span>
                        <center><h2>Enter USN to register !</h2></center>
                        <br>
                        <center>
                            <form method="post">
                                <input type="hidden" id="rid" name="rid" class="form-control">
                                <input type="text" name="usn" class="form-control" placeholder="Enter USN Here">
                                <button type="submit" name="register_subject" class="btn btn-primary" style="margin-top:4px">Submit</button>
                            </form>
                        </center>
                      </div>
                    
                    </div>
            
            <script>
                function close_modal()
                {
                    document.getElementById("myModal").style.display="none";
                    
                }
            </script>


                <div class="col-md-12">
                        <center><a href="index"><button class="btn btn-success">Go Back</button></a></center>
                </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
       
                            <div class="table-responsive">
                                <?php
                                    $sqlcount="SELECT * FROM `topics`;";
                                    $resultcount = mysqli_query($conn,$sqlcount);
                                    ?>
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>S No.</th>
                                            <th>Topic Name</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody id="inner_table">
                                        <?php
                                        $i=0;
                                        while($row=mysqli_fetch_assoc($resultcount))
                                        {
                                        ?>
                                        <tr>
                                            <td><?php echo $row['id'];?></td>
                                            <td><?php echo $row['topic_name'];?></td>
                                            <td>
                                                <?php 

                                                if($row['usn']!='')
                                                echo "SELECTED BY ".$row['usn'];
                                                else 
                                                {?>
                                                    <button class="btn btn-primary" onclick="select_subject(<?php echo $row['id'];?>)">Select</button>
                                                <?php 
                                                }

                                                ?></td>
                                        </tr>
                                      <?php 
                                        } 
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                    </div><!-- Activity Sec -->
                    
                    <script>
                        function select_subject(i)
                        {
                            document.getElementById("rid").value=i;
                            document.getElementById("myModal").style.display="block";
                        }
                    </script>
                    
                </div><!-- Widget -->
            </div>
			<h3 style="color:#fff">By Manan Raj ;)</h3>
			
		
    <script src="https://mini.mananraj.in/vendors/jquery/dist/jquery.min.js"></script>