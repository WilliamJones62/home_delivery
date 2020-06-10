  $(document).ready(function() {

    $('#index_dt').DataTable({
      scrollY: "65vh",
      scrollCollapse: true,
      paging: false,
      autoWidth: true,
      responsive: true,
      retrieve: true,
      dom: 'Bfrtip'
    });

    $('#normal_dt').DataTable({
      scrollY: "65vh",
      scrollCollapse: true,
      paging: false,
      autoWidth: true,
      responsive: true,
      retrieve: true,
      columnDefs: [ {
          targets: [ 0 ],
          orderData: [ 0, 1, 2 ]
      } ],
      dom: 'Bfrtip',
      buttons: [
        {
        extend: 'print',
        }
      ]
    });

    $("#btnPrint").printPreview({
      obj2print:'#main'
    });

  });
