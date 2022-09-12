<cfoutput>
	<div class="row mt-4">
		<div class="col-12">
			<div class="content">
				<h2>Upload</h2>
				<form method="post" action="/main/upload" enctype="multipart/form-data">
					<div>
						<input type="file" class="form-control" id="myFile" name="myFile">
					</div>
					<div class="mt-2">
						<button type="submit" class="btn btn-primary mt-4">Store File</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="content mt-4">
				<div>
					<h2>Files</h2>
					<ul>
						<cfloop array="#prc.files#" index="file">
							<li>#file#</li>
						</cfloop>
					</ul>
				</div>
			</div>
		</div>
	</div>
</cfoutput>
