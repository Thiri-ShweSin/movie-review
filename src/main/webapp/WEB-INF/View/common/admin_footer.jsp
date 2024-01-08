</div>

	<script>
		const menu_toggle = document.querySelector('.menu-toggle');
		const sidebar = document.querySelector('.sidebar');

		menu_toggle.addEventListener('click', () => {
			console.log('hi');
			menu_toggle.classList.toggle('is-active');
			sidebar.classList.toggle('is-active');
		});
	</script>
	
	<script type="application/javascript">
		function tableSearch(){
			let input, filter, table, tr, td, txtValue;
			
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable");
			tr = document.getElementsByTagName("tr");
			
			for(let i=0;i<tr.length;i++){
				td = tr[i].getElementsByTagName("td")[1];
				if(td){
					txtValue = td.textContent || td.innerText;
					if(txtValue.toUpperCase().indexOf(filter)>-1){
						tr[i].style.display = "";
					}
					else{
						tr[i].style.display="none";
					}
				}
			}
		}
	</script>

</body>
</html>