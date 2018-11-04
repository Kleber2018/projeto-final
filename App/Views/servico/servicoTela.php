<main class="column main">
    <nav class="breadcrumb is-small" aria-label="breadcrumbs">
        <ul>
            <li><a href="#">Administração</a></li>
            <li><a>Serviço</a></li>
            <li class="is-active"><a href="#" aria-current="page">QD:0005(IMPLEMENTAR)</a></li>
        </ul>
        <br/>
    </nav>


    <div class="content">
            <?php if($Sessao::retornaMensagem()){ ?>
                <div class="alert alert-warning" role="alert"><?php echo $Sessao::retornaMensagem(); ?></div>
            <?php } ?>


        <div class="container has-text-centered">
            <div class="column is-4 is-offset-4">
                <div class="box">
                    <form name="busca-servico" action="http://<?php echo APP_HOST; ?>/servico/buscarServico" method="POST">
                        <div class="field">
                            <div class="control">
                                <input class="input" type="text" name="os-servico" placeholder="QD:026 ou QD026" value="" required autofocus>
                            </div>
                        </div>
                        <button type="submit" class="button is-link" name="entrar" value="ENTRAR">
                            Buscar Serviço pelo Código
                        </button>
                    </form>
                </div>
            </div>
        </div>




        <form id="form_cadastro" action="http://<?php echo APP_HOST; ?>/servico/chamaViewApropriacaoHH" method="POST">

                <fieldset disabled>
                    <label for="localizador-os-codigo" class="label" >Código do localizador</label>
                    <div class="field is-grouped">
                        <div class="control has-icons-left is-expanded is-disabled">
                            <input type="text" class="input" name="os-localizador1" placeholder="Ex: QDJ1(PONTA GROSSA - ETA)" value="" required>
                            <span class="icon is-small is-left">
                                    <i class="fas fa-map-marker-alt"></i>
                                </span>
                        </div>
                    </div>


                    <div class="field">
                        <label for="responsavel-ose" class="label">Responsável</label>
                        <div class="control has-icons-left">
                            <input type="text" class="input" name="os-responsavel" placeholder="Responsável" value="" required>
                            <span class="icon is-small is-left">
                                 <i class="fas fa-users"></i>
                            </span>
                        </div>
                    </div>



                    <div class="field">
                        <label for="tipo-os" class="label">Tipo (nao está puchando)</label>
                        <div class="select">
                            <select name="os-tipo">
                                <option value="1">1 - CEG (Corretiva Emergêncial)</option>
                                <option value="2">2 - CNE (Corretiva não Emergêncial)</option>
                                <option value="3">3 - PNS (Preventiva)</option>
                                <option value="9">9 - MEM (Melhoria)</option>
                                <option value="6">6 - SIG (Serviço Interno)</option>
                            </select>
                        </div>
                    </div>


                    <div class="field">
                        <label for="data-ose" class="label">Data Prevista</label>
                        <div class="control has-icons-left">
                            <input type="text" class="input" name="os-data-prevista" placeholder="   /   /     " value="" required>
                            <span class="icon is-small is-left">
                                             <i class="fas fa-users"></i>
                                        </span>
                        </div>
                    </div>


                    <div class="field">
                        <label for="titulo-os" class="label">Título da ordem de Serviço</label>
                        <div class="control has-icons-left">
                            <input type="text" class="input"  name="os-titulo" placeholder="Título" value="" required>
                            <span class="icon is-small is-left">
                                <i class="fas fa-map-signs"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label for="obs-os" class="label">Observação</label>
                        <div class="control has-icons-left">
                            <input type="text" class="input"  name="os-obs" placeholder="Observação" value="" required>
                            <span class="icon is-small is-left">
                                <i class="fas fa-map-signs"></i>
                            </span>
                        </div>
                    </div>
                </fieldset>
                </br>

            <!--Redireciona para ServicoController function servicoApropriacaoHH-->
                <div class="control">
                    <div class="field">
                        <button type="submit" class="button is-link" >informar realização e Apropriar Horas trabalhadas</button> Implementar: esse botão para pegar o codigo da ose que está sendo visualizada e aabre a tela servicoApropriacaoHH para add as horas trabalhadas
                    </div>
                </div>
            </form>
        </div>

</main>
</section>