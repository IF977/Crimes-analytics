<tbody>
    <% @chamados.each do |chamado| %>
      <tr>
        <td><%= chamado.numero_solicitacao %></td>
        <td><%= chamado.data_solicitacao %></td>
        <td><%= chamado.sexo %></td>
        <td><%= chamado.idade %></td>
        <td><%= chamado.codigo_bairro %></td>
        <td><%= chamado.bairro %></td>
        <td><%= chamado.origem_chamado %></td>
        <td><%= chamado.situacao_chamado %></td>
        <td><%= chamado.tipo_chamada %></td>
        <td><%= chamado.motivo_descarte %></td>
        <td><%= chamado.tipo_ocorrencia %></td>
        <td><%= link_to 'Show', chamado %></td>
        <td><%= link_to 'Edit', edit_chamado_path(chamado) %></td>
        <td><%= link_to 'Destroy', chamado, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>