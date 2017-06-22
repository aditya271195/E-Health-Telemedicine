<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="background-color:#3a5684;">
<c:import url="../user_header.jsp"> </c:import><br><br>

<div align="center"> 
<font color="white" face="ALGERIAN" border="1">
<h1 align="center"> E-Health & Telemedicine</h1></font>

 </div><br><br>
 <font color="white">   
<c:if test='${bt=="bt1" && pr =="pr1" }'> 
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt1") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr1") %></b><br><br>
</font>
<font color="#f7c954">
<h3 align="center">Your Body Temperature Range & the Heart beat rate is absolutely Normal.</h3><br><br></font>
Individual body temperature depends upon the age, exertion, infection, sex, time of day, and reproductive status of the subject, 
the place in the body at which the measurement is made, the subject's state of consciousness (waking or sleeping),
 activity level, and emotional state.

</c:if>
<c:if test='${bt=="bt1"  && pr=="pr2"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt1") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr2") %></b><br><br></font>
<font color="#f7c954">
 <h3 align="center">Your Body Temperature Range is Normal.But Your Pulse Rate reading shows sign of Bradycardia (Slow Heart Rate).</h3><br><br></font>
 Having Bradycardia  means that your heart beats very slowly<br>
 Bradycardia is often the result of another heart condition, so taking steps to improve your heart health will usually improve your overall health.<br>
 The best steps you can take are to:<br>
1)<b>Control your cholesterol and blood pressure.</b><br>
2)<b>Eat a low-fat, low-salt diet.</b><br>
3)<b>Get regular exercise. Your doctor can tell you what level of exercise is safe for you.</b><br>
4)<b>Quit smoking, if you smoke.</b><br><br>
Get emergency help if you fainted or if you have chest pains or have severe shortness of breath.<br>
<b>Call your doctor right away if your heart rate is slower than usual, you feel like you might pass out, or you notice increased shortness of breath.</b>

 
 
</c:if> 
<c:if test='${bt=="bt1"  && pr=="pr3"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt1") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr3") %></b><br><br></font>
<font color="#f7c954">
<h3 align="center"> Your Body Temperature Range is Normal.But Your Pulse Rate reading shows sign of Tachycardia (Fast Heart Rate).</h3><br><br></font> 

  There are many causes of tachycardia such as poor circulation, high blood pressure/cholesterol, low potassium or arrhythmia. 
  Symptoms include a 'fluttering feeling in the chest' difficulty catching your breath, irregular heartbeat, pain in the chest and light headache<br>
  Note: Bear in mind that the normal heart rate is faster in young children.100 is the highest normal-range for adults over 15 years of age 
  but up to 130 is normal for most children and not considered tachycardia.See your doctor if you are uncertain.<br><br>
  You can follow below instructions:<br>
  <b> Avoid Stimulants:</b> The last thing you want if you have an elevated heart rate are stimulants which cause your heart to pump faster still
                            by speeding up your metabolism and releasing adrenaline. That means no caffeinated tea or coffee, no soda drinks or 
                            checking all of your medication and supplements.<br>
 <b>Consume Potassium:</b>  Low potassium levels are one cause of tachycardia, so if you suspect you are not getting enough in your diet then try to get more or take a supplement such as a multivitamin and mineral tablet.
                            Natural food sources of potassium are bananas, potatoes, whole grains and vegetables.<br>
  
 <b>Meditate:</b> Meditation is the ability to control your thoughts and your bodily functions by concentrating on them and taking time out to be calm. By learning to relax you can slow down your heart rate and this is a great way to combat bouts of tachycardia. 
                 Try finding a quiet place and sitting with your legs crossed and let your thoughts wonder or focus on a mantra.<br>
 <b>Eat Lots of Fibre:</b> If your tachycardia is a result of high blood pressure or any circulatory system related problems, then you should try to increase the amount of fibre in your diet. This passes through your system and removes fatty deposits called 'arterial plaque' in your arteries which are the cause of cholesterol and a contributor to high blood pressure.
                    You should also drink plenty of water and avoid consuming too many saturated fats.
                    <b>Exercise:</b> Exercising with light CV work can help to solve many heart related problems by strengthening it through training. It is important to avoid overdoing this right away of course as it may put you at risk of heart attack. 
                    Instead gently increase the amount of aerobic exercise you do under the guidance of a physician who knows your condition.

    
</c:if>
<c:if test='${bt=="bt2"  && pr=="pr1"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt2") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr1") %></b><br><br></font>
<font color="#f7c954">
<h3 align="center">Your Body Temperature is slightly above the Normal Range & Good Thing is that your Heart Rate is totally fine. </h3><br><br></font>
Home solution to deal with slightly high body temperature:<br>

<b> 1) Soak a wash cloth in cool tap water, wring out the excess water and then sponge areas like your armpits, feet, hands and groin to reduce the temperature.</b><br><br>
<b> 2)Use Basil:</b><br>
Basil is an effective herb for bringing down a fever. This herb is just as effective as many types of antibiotics in the market. Its healing properties will help reduce fever very quickly.<br>

Boil together 20 basil leaves and one teaspoon of crushed ginger in one cup water, until the solution gets reduced to half. Add a little honey and drink this tea two or three times a day for three days.<br>
Make a tea by mixing one teaspoon of basil with one-fourth teaspoon of pepper in one cup of boiling water. Steep for five minutes, and then strain and drink the tea. Drink it two or three times daily until you recover completely.<br><br>
<b>3) Garlic</b><br>

The warm nature of garlic can also lower a high fever by promoting sweating. This also helps eliminate harmful toxins from the body and speed up recovery. Plus, garlic is an antifungal and antibacterial agent that helps the body fight infections as well as ward off disease.<br>

Finely mince one garlic clove and add it to one cup of hot water. Steep for 10 minutes, strain and sip it slowly. Drink this twice a day and you will feel much better the next day.<br>
Warm a mixture of two crushed garlic cloves and two tablespoons of olive oil. Apply this mixture over the sole of each foot, leaving a few spots uncovered. Wrap your feet with gauze to keep the garlic in place and leave it on overnight. For some people, this can eliminate a fever in just one night.<br><br>
<b> 4) Raisins</b><br>

Raisins help the body fight infections and reduce fevers. They are loaded with phenolic phytonutrients, which are known to have antibacterial and antioxidant properties. Also, raisins act as tonic for your body when you have a fever.<br>

i)Soak 25 raisins in one-half cup of water for one hour, or until the raisins become soft.<br>
ii)Crush the soaked raisins in the water and strain the liquid.<br>
iii)Add the juice of half a lime to this solution.<br>
iv)Have this twice a day until your fever is gone.<br><br>

<b> If You are not feeling well after trying above solutions PLEASE CONTACT YOUR DOCTOR</b>
</c:if>
<c:if test='${bt=="bt2"  && pr=="pr2"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt2") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr2") %></b><br><br></font>

<font color="#f7c954">
<h3 align="center">Your Body Temperature is slightly above the Normal Range & Your Pulse Rate readings shows the sign of Bradycardia (Slow Heart Rate)</h3><br><br></font>
Home solution to deal with slightly high body temperature:<br>

<b> 1) Soak a wash cloth in cool tap water, wring out the excess water and then sponge areas like your armpits, feet, hands and groin to reduce the temperature.</b><br><br>
<b> 2)Use Basil:</b><br>
Basil is an effective herb for bringing down a fever. This herb is just as effective as many types of antibiotics in the market. Its healing properties will help reduce fever very quickly.<br>

Boil together 20 basil leaves and one teaspoon of crushed ginger in one cup water, until the solution gets reduced to half. Add a little honey and drink this tea two or three times a day for three days.<br>
Make a tea by mixing one teaspoon of basil with one-fourth teaspoon of pepper in one cup of boiling water. Steep for five minutes, and then strain and drink the tea. Drink it two or three times daily until you recover completely.<br><br>
<b>3) Garlic</b><br>

The warm nature of garlic can also lower a high fever by promoting sweating. This also helps eliminate harmful toxins from the body and speed up recovery. Plus, garlic is an antifungal and antibacterial agent that helps the body fight infections as well as ward off disease.<br>

Finely mince one garlic clove and add it to one cup of hot water. Steep for 10 minutes, strain and sip it slowly. Drink this twice a day and you will feel much better the next day.<br>
Warm a mixture of two crushed garlic cloves and two tablespoons of olive oil. Apply this mixture over the sole of each foot, leaving a few spots uncovered. Wrap your feet with gauze to keep the garlic in place and leave it on overnight. For some people, this can eliminate a fever in just one night.<br><br>
<b> 4) Raisins</b><br>

Raisins help the body fight infections and reduce fevers. They are loaded with phenolic phytonutrients, which are known to have antibacterial and antioxidant properties. Also, raisins act as tonic for your body when you have a fever.<br>

i)Soak 25 raisins in one-half cup of water for one hour, or until the raisins become soft.<br>
ii)Crush the soaked raisins in the water and strain the liquid.<br>
iii)Add the juice of half a lime to this solution.<br>
iv)Have this twice a day until your fever is gone.<br><br>

Home solution to deal with Bradycardia (Slow Heart Rate):<br><br>
1)<b>Control your cholesterol and blood pressure.</b><br>
2)<b>Eat a low-fat, low-salt diet.</b><br>
3)<b>Get regular exercise. Your doctor can tell you what level of exercise is safe for you.</b><br>
4)<b>Quit smoking, if you smoke.</b><br><br>

</c:if>
<c:if test='${bt=="bt2"  && pr=="pr3"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt2") %></b><br><br></font>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr3") %></b><br><br>
<font color="#f7c954">
<h3 align="center">Your Body Temperature is slightly above the Normal Range & Your Pulse Rate readings shows the sign of Tachycardia (Fast Heart Rate).</h3><br><br></font>
Home solution to deal with slightly high body temperature:<br>

<b> 1) Soak a wash cloth in cool tap water, wring out the excess water and then sponge areas like your armpits, feet, hands and groin to reduce the temperature.</b><br><br>
<b> 2)Use Basil:</b><br>
Basil is an effective herb for bringing down a fever. This herb is just as effective as many types of antibiotics in the market. Its healing properties will help reduce fever very quickly.<br>

Boil together 20 basil leaves and one teaspoon of crushed ginger in one cup water, until the solution gets reduced to half. Add a little honey and drink this tea two or three times a day for three days.<br>
Make a tea by mixing one teaspoon of basil with one-fourth teaspoon of pepper in one cup of boiling water. Steep for five minutes, and then strain and drink the tea. Drink it two or three times daily until you recover completely.<br><br>
<b>3) Garlic</b><br>

The warm nature of garlic can also lower a high fever by promoting sweating. This also helps eliminate harmful toxins from the body and speed up recovery. Plus, garlic is an antifungal and antibacterial agent that helps the body fight infections as well as ward off disease.<br>

Finely mince one garlic clove and add it to one cup of hot water. Steep for 10 minutes, strain and sip it slowly. Drink this twice a day and you will feel much better the next day.<br>
Warm a mixture of two crushed garlic cloves and two tablespoons of olive oil. Apply this mixture over the sole of each foot, leaving a few spots uncovered. Wrap your feet with gauze to keep the garlic in place and leave it on overnight. For some people, this can eliminate a fever in just one night.<br><br>
<b> 4) Raisins</b><br>

Raisins help the body fight infections and reduce fevers. They are loaded with phenolic phytonutrients, which are known to have antibacterial and antioxidant properties. Also, raisins act as tonic for your body when you have a fever.<br>

i)Soak 25 raisins in one-half cup of water for one hour, or until the raisins become soft.<br>
ii)Crush the soaked raisins in the water and strain the liquid.<br>
iii)Add the juice of half a lime to this solution.<br>
iv)Have this twice a day until your fever is gone.<br><br>

You Can follow the following instructions to deal with Tachycardia(Fast Heart Rate )<br><br>

<b> Avoid Stimulants:</b> The last thing you want if you have an elevated heart rate are stimulants which cause your heart to pump faster still
                            by speeding up your metabolism and releasing adrenaline. That means no caffeinated tea or coffee, no soda drinks or 
                            checking all of your medication and supplements.<br>
 <b>Consume Potassium:</b>  Low potassium levels are one cause of tachycardia, so if you suspect you are not getting enough in your diet then try to get more or take a supplement such as a multivitamin and mineral tablet.
                            Natural food sources of potassium are bananas, potatoes, whole grains and vegetables.<br>
  
 <b>Meditate:</b> Meditation is the ability to control your thoughts and your bodily functions by concentrating on them and taking time out to be calm. By learning to relax you can slow down your heart rate and this is a great way to combat bouts of tachycardia. 
                 Try finding a quiet place and sitting with your legs crossed and let your thoughts wonder or focus on a mantra.<br>
 <b>Eat Lots of Fibre:</b> If your tachycardia is a result of high blood pressure or any circulatory system related problems, then you should try to increase the amount of fibre in your diet. This passes through your system and removes fatty deposits called 'arterial plaque' in your arteries which are the cause of cholesterol and a contributor to high blood pressure.
                    You should also drink plenty of water and avoid consuming too many saturated fats.
                    <b>Exercise:</b> Exercising with light CV work can help to solve many heart related problems by strengthening it through training. It is important to avoid overdoing this right away of course as it may put you at risk of heart attack. 
                    Instead gently increase the amount of aerobic exercise you do under the guidance of a physician who knows your condition.

</c:if>
<c:if test='${bt=="bt3"  && pr=="pr1"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt3") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr1") %></b><br><br></font>
<font color="#f7c954">
<h3 align="center">Your Body Temperature is very much high.Please Contact Your Doctor as soon. Good thing is that your pulse rate is normal.</h3><br><br></font>
 This range of body temperature is also reffered to as Hyperpyrexia.Such a high temperature is considered a medical emergency, as it may indicate a serious underlying condition <br>
</c:if>

<c:if test='${bt=="bt3"  && pr=="pr2"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt3") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr2") %></b><br><br></font>
<font color="#f7c954">
<h3 align="center"> Your Body Temperature is very much high.Please Contact Your Doctor as soon.Your pulse rate is readings shows the sign of Bradycardia (Slow Heart Rate)</h3><br><br></font>
This range of body temperature is also reffered to as Hyperpyrexia.Such a high temperature is considered a medical emergency, as it may indicate a serious underlying condition <br>
 Home solution to deal with Bradycardia (Slow Heart Rate):<br><br>
1)<b>Control your cholesterol and blood pressure.</b><br>
2)<b>Eat a low-fat, low-salt diet.</b><br>
3)<b>Get regular exercise. Your doctor can tell you what level of exercise is safe for you.</b><br>
4)<b>Quit smoking, if you smoke.</b><br><br>
But As Your Body Temperature is very much high above normal range,Contact your doctor as soon.
</c:if>
<c:if test='${bt=="bt3"  && pr=="pr3"}'>
<font color="#f9db2c">
<b> Your Body Temperature <%=request.getAttribute("bt3") %></b><br><br>
<b> Your Pulse Rate reading:<%=request.getAttribute("pr3") %></b><br><br></font>
<font color="#f7c954">
<h3 align="center">Your Body Temperature is very much high.Please Contact Your Doctor as soon.Your pulse rate is readings shows the sign of Tachycardia (Fast Heart Rate). </h3><br><br></font>
 This range of body temperature is also reffered to as Hyperpyrexia.Such a high temperature is considered a medical emergency, as it may indicate a serious underlying condition<br>
 There are many causes of tachycardia such as poor circulation, high blood pressure/cholesterol, low potassium or arrhythmia. 
  Symptoms include a 'fluttering feeling in the chest' difficulty catching your breath, irregular heartbeat, pain in the chest and light headache<br>
  Note: Bear in mind that the normal heart rate is faster in young children.100 is the highest normal-range for adults over 15 years of age 
  but up to 130 is normal for most children and not considered tachycardia.See your doctor if you are uncertain.<br><br>
  You can follow below instructions:<br>
  <b> Avoid Stimulants:</b> The last thing you want if you have an elevated heart rate are stimulants which cause your heart to pump faster still
                            by speeding up your metabolism and releasing adrenaline. That means no caffeinated tea or coffee, no soda drinks or 
                            checking all of your medication and supplements.<br>
 <b>Consume Potassium:</b>  Low potassium levels are one cause of tachycardia, so if you suspect you are not getting enough in your diet then try to get more or take a supplement such as a multivitamin and mineral tablet.
                            Natural food sources of potassium are bananas, potatoes, whole grains and vegetables.<br>
  
 <b>Meditate:</b> Meditation is the ability to control your thoughts and your bodily functions by concentrating on them and taking time out to be calm. By learning to relax you can slow down your heart rate and this is a great way to combat bouts of tachycardia. 
                 Try finding a quiet place and sitting with your legs crossed and let your thoughts wonder or focus on a mantra.<br>
 <b>Eat Lots of Fibre:</b> If your tachycardia is a result of high blood pressure or any circulatory system related problems, then you should try to increase the amount of fibre in your diet. This passes through your system and removes fatty deposits called 'arterial plaque' in your arteries which are the cause of cholesterol and a contributor to high blood pressure.
                    You should also drink plenty of water and avoid consuming too many saturated fats.
                    <b>Exercise:</b> Exercising with light CV work can help to solve many heart related problems by strengthening it through training. It is important to avoid overdoing this right away of course as it may put you at risk of heart attack. 
                    Instead gently increase the amount of aerobic exercise you do under the guidance of a physician who knows your condition.

     
</c:if>


</font>

</body>
</html>



